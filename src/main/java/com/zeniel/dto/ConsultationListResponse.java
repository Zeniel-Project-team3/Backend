package com.zeniel.dto;

import java.time.LocalDate;

public record ConsultationListResponse(
        Long consultationId,
        LocalDate consultDate,
        String detail, // 상담 내용 - 원문
        String summary, // 요약 상담 내용
        LocalDate iapDate,
        Integer iapPeriod
) {
}
