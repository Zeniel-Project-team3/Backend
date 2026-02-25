package com.zeniel.dto;

import com.zeniel.entity.training.Allowance;

import java.time.LocalDate;

public record TrainingListResponse(
        Long trainingId,
        String courseName,
        LocalDate startDate,
        LocalDate endDate,
        Allowance allowance, // 훈련수당 지급 상태 // PAID, UNPAID, NONE
        Boolean completed
) {
}
