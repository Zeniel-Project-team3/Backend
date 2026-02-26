package com.zeniel.service;

import com.zeniel.dto.AiRequestDto;
import com.zeniel.dto.AiResponseDto;
import com.zeniel.dto.ConsultationUploadRequest;
import com.zeniel.dto.ConsultationUploadResponse;
import com.zeniel.entity.Consultation;
import com.zeniel.entity.client.Clients;
import com.zeniel.repository.ClientRepository;
import com.zeniel.repository.ConsultationRepository;
import lombok.RequiredArgsConstructor;
import org.apache.tika.Tika;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.multipart.MultipartFile;

@Service
@RequiredArgsConstructor
public class ConsultationService {

    private final ClientRepository clientRepository;
    private final ConsultationRepository consultationRepository;
    private final RestTemplate restTemplate;
    private final AiSummaryService aiSummaryService;

    @Transactional
    public ConsultationUploadResponse upload(
            MultipartFile file,
            Long clientId
    ) {
        // 1단계: 내담자 조회
        Clients client = clientRepository
                .findById(clientId)
                .orElseThrow(()->new RuntimeException("내담자 정보를 확인해주세요"));

        // 2단계: 파일 텍스트 추출
        String rawText = extractText(file);

        // 3단계: AI로 요약 생성
        String summary = aiSummaryService.summarize(rawText);

        // 4단계: 상담 기록 생성 + 내담자에 연결
        Consultation consultation = Consultation.builder()
                .rawText(rawText)
                .summary(summary)
                .build();

        consultationRepository.save(consultation);
        client.getConsultations().add(consultation);

        return new ConsultationUploadResponse(
                consultation.getId(),
                client.getName(),
                "DONE",
                "상담 내역 파일이 성공적으로 저장되었습니다."
        );
    }

    // 파일 텍스트 추출 메서드
    private String extractText(MultipartFile file) {
        try {
            Tika tika = new Tika();
            return tika.parseToString(file.getInputStream());
        } catch (Exception e) {
            throw new IllegalStateException(
                    "파일 텍스트 추출 실패: " + e.getMessage()
            );
        }
    }

    @Transactional(readOnly = true)
    public AiResponseDto getConsultationScenario(String name, String phone) {
        // 이름, 주민등록번호가 일치하는 사용자를 찾기
        Clients client = clientRepository.findByNameAndPhone(name, phone)
                .orElseThrow(() -> new RuntimeException("상담자 정보가 존재하지 않습니다."));

        // 상담 회차 계산 (sessionCount = (각각의 client가 가지는 Consultation 엔티티의 총 개수) + 1)
        // 상담 보고서 데이터가 없을 경우 기본값 1회차
        // int sessionCount = (client.getConsultations() != null ? client.getConsultations().size() : 1) + 1;

        AiRequestDto request = AiRequestDto.builder()
                .clientId(client.getId())
                .topK(5) // 유사한 상담 시나리오 몇 개를 가져올지 설정 (기본값 5)
                .build();

        // AI 서버로 내담자 데이터를 전송 후 분석 결과를 AiResponseDto 객체로 자동 변환
        String aiResponseUrl = "http://localhost:8001/api/v1/recommend";
        return restTemplate.postForObject(aiResponseUrl, request, AiResponseDto.class);
    }
}
