package com.zeniel.entity.training;

public enum ConsultationStatus {
    BEFORE,      // 상담 시작 전 (예약 상태)
    IN_PROGRESS, // 상담 진행 중 (상담사가 시나리오를 보고 대화 중)
    COMPLETED    // 상담 완료 (상담 일지 작성이 끝남)
}
