package com.zeniel.job.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 엑셀에서 추출한 사용자 정보 (A) = 나이, 성별, 역량, 희망직종, 상담내역, 주소, 학교, 전공, 최종학력
 * - GPT에 넘기고, 사용자에게 A + output 함께 노출
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserInfoDto {

    private String age;           // 나이
    private String gender;        // 성별
    private String competency;    // 역량
    private String desiredJob;     // 희망직종
    private String counselingNote;// 상담내역
    private String address;       // 주소
    private String school;        // 학교
    private String major;         // 전공
    private String educationLevel;// 최종학력
}
