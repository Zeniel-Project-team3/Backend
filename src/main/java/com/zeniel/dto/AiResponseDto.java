package com.zeniel.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AiResponseDto {
    // 금회차 핵심 목표 (상담의 방향성)
    private String consultationGoal;

    // 필수 이행 및 고지 사항 (미이행 시 수당 부지급 등 법적 리스크 방지)
    private String mandatoryNotice;

    // 제안할 서비스 (예: 직업심리검사, 일경험 등)
    private String suggestedServices;

    // 맞춤형 상담 스크립트 (내담자 특성 반영 대화문)
    private String script;

    // 이번 상담 핵심 질문 (내담자의 의지를 파악할 질문)
    private String keyQuestions;

    // 상담 후 사후 과제 (내담자가 다음 회차까지 해와야 할 일)
    private String postConsultationTask;
}
