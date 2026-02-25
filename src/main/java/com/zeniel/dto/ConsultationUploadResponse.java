package com.zeniel.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class ConsultationUploadResponse {

    private Long consultationId;    // 저장된 상담 기록 ID
    private String clientName;      // 내담자 이름
    private String status;          // 처리 상태
    private String message;         // 결과 메시지
}
