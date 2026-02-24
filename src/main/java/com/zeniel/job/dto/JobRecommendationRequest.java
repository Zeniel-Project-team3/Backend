package com.zeniel.job.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * 직업 추천 API 입력
 * - (방식1) 이름 + 주민등록번호 → 엑셀에서 해당 행 조회 후 정보(A) 추출
 * - (방식2) 정보(A)를 직접 입력: 나이, 성별, 역량, 희망직종, 상담내역, 주소, 학교, 전공, 최종학력
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class JobRecommendationRequest {

    /** 이름 (엑셀 조회 시 사용) */
    private String name;

    /** 주민등록번호 (엑셀 조회 시 사용) */
    private String residentNo;

    /** 나이 */
    private String age;

    /** 성별 */
    private String gender;

    /** 역량 */
    private String competency;

    /** 희망직종 (이름+주민번호로 조회 시에는 엑셀에서 채워짐) */
    private String desiredJob;

    /** 상담내역 */
    private String counselingNote;

    /** 주소 */
    private String address;

    /** 학교 */
    private String school;

    /** 전공 */
    private String major;

    /** 최종학력 */
    private String educationLevel;
}
