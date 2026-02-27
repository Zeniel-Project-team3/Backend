package com.zeniel.dto;

import com.zeniel.entity.client.Education;
import com.zeniel.entity.client.Gender;
import jakarta.validation.constraints.NotBlank;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Getter
@NoArgsConstructor
public class ClientRegisterRequest {

    @NotBlank
    private String name;          // 이름
    @NotBlank
    private String residentId;    // 주민번호
    @NotBlank
    private String phone; // 연락처

    private Integer age;          // 나이
    private Gender gender;        // 성별 (MALE / FEMALE)
    private String competency;    // 역량 등급
    private String desiredJob;    // 희망 직종
    private String address;       // 주소
    private String university;    // 학교
    private String major;         // 전공
    private Education education;  // 최종학력
}
