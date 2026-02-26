package com.zeniel.dto;

import com.zeniel.entity.training.Allowance;

import java.time.LocalDate;

public record CreateTrainingRequest(
        String title,
        LocalDate startDate,
        LocalDate endDate,
        Allowance allowance, // PAID = 지급완료, UNPAID = 미지급,NONE = 없음
        Boolean complete
) {
}
