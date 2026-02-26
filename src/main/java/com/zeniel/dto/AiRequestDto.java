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
public class AiRequestDto { // ai 상담시나리오 요청
    // 인적 사항
    private String name;
    private String gender;
    private Integer age;
    private String education; // 학력 (중졸, 고졸, 초대졸, 대졸) - enum
    private String major;     // 전공

    // 현재 상담 상황
    private String joinType;  // 참여 유형 (국취제 1, 2)
    private Integer sessionCount;    // 현재 몇 회차 상담인가? (1~6회차)
    private String joinStage;     // 참여 단계 (진로설정 / 직업훈련 / 취업알선)

    // 역량 및 배경 정보
    private String desiredJob;       // 희망 직종
    private String competency;       // 보유 역량 (자격증, 기술 등)
    private String businessType;     // 선호하는 업종 타입
}
