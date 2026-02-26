package com.zeniel.controller;

import com.zeniel.dto.AiResponseDto;
import com.zeniel.dto.ConsultationUploadRequest;
import com.zeniel.dto.ConsultationUploadResponse;
import com.zeniel.service.ConsultationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/api/consultation")
@RequiredArgsConstructor
public class ConsultationController {

    private final ConsultationService consultationService;

    @PostMapping("/upload")
    public ResponseEntity<ConsultationUploadResponse> upload(
            @RequestPart("file") MultipartFile file,
            @RequestBody ConsultationUploadRequest request
    ) {

        ConsultationUploadResponse response =
                consultationService.upload(file, request);

        return ResponseEntity.ok(response);
    }

    // 상담 시나리오 요청 API - http://localhost:8080/api/consultation/ai-scenario-request?name=홍길동&phone=01012345678
    // 원스톱 서비스: 리액트가 해당 api로 요청을 보내면, 스프링은 파이썬과 대화를 마치고 바로 ai답변을 화면에 반환
    @GetMapping("/ai-scenario-request")
    public ResponseEntity<AiResponseDto> getScenario(
            @RequestParam String name,
            @RequestParam String phone) {
        AiResponseDto result = consultationService.getConsultationScenario(name, phone);
        return ResponseEntity.ok(result);
    }
}
