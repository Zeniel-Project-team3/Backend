package com.zeniel.dto;

import com.zeniel.entity.client.Education;

import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;

/**
 * client의 정보를 수정하는데 사용되는 dto
 * client의 id, address, education, university, major,
 * business_type, join_type, join_stage, competency, desired_job 포함
 */
@Getter
public class ClientRequest{
    @NotNull(message = "ID는 필수입니다.")
    private Long id;

    private String address;

    @Enumerated(EnumType.STRING)
    private Education education; // 최종학력

    private String university;

    private String major;

    private String businessType;

    private String joinType;

    private String joinStage;

    private String competency;

    private String desiredJob;
}
