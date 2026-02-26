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

    private Long clientId;

    // 금회차 핵심 목표 (상담의 방향성)
    private String consultationGoal;

    // 필수 이행 및 고지 사항 (미이행 시 수당 부지급 등 법적 리스크 방지)
    private String mandatoryNotice;

    // 제안할 서비스 (예: 직업심리검사, 일경험 등)
    private String suggestedServices;

    // 이번 상담 핵심 질문 (내담자의 의지를 파악할 질문)
    private String keyQuestions;

    // 내담자와 유사한 스펙을 가진 사람의 직업
    private String smilarOccupations;

    // 급여 수준
    private String avaerageSalary;
}
