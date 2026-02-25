package com.zeniel.dto;

import java.time.LocalDate;

public record ClientListResponse(
        Long id,
        String name,
        String residentId,
        LocalDate birthDate,
        String phone,
        Integer age,
        String gender, // MALE, FEMALE
        String businessType, // 사업 유형
        String joinType, // 참여 유형
        String joinStage, // 참여 단계
        String competency, // 역량 등급
        String desiredJob, // 희망 직종 // todo 여러줄일 수도 있음, List 변환 필요 할 수 있음
        String address,
        String university, // 학교명
        String major, // 전공

        // 고용정보는 최신 1개만 받아옴
        String companyName,
        String jobTitle,
        Integer salary,
        LocalDate employDate,
        LocalDate resignDate
) {
}
