package com.zeniel.service;

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
import org.springframework.web.multipart.MultipartFile;

@Service
@RequiredArgsConstructor
public class ConsultationService {

    private final ClientRepository clientRepository;
    private final ConsultationRepository consultationRepository;
    private final AiSummaryService aiSummaryService;

    @Transactional
    public ConsultationUploadResponse upload(
            MultipartFile file,
            ConsultationUploadRequest request
    ) {
        // 1단계: 내담자 조회
        Clients client = clientRepository
                .findByNameAndResidentId(
                        request.getName(),
                        request.getResidentId()
                )
                .orElseGet(() -> {
                    // DB에 없으면 새 내담자 생성
                    Clients newClient = Clients.builder()
                            .name(request.getName())
                            .residentId(request.getResidentId())
                            .build();
                    return clientRepository.save(newClient);
                });

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
}
