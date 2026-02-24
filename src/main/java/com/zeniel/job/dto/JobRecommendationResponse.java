package com.zeniel.job.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * 직업 추천 API 출력
 * - extractedUserInfo(A): 엑셀에서 추출한 또는 입력된 사용자 정보 → 사용자에게 노출
 * - 추천 결과: 직업훈련과정명, 취업직종, 급여수준, 취업처, Top5 유사 케이스
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class JobRecommendationResponse {

    /** 사용자에게 보여줄 정보 A (나이, 성별, 역량, 희망직종, 상담내역, 주소, 학교, 전공, 최종학력) */
    private UserInfoDto extractedUserInfo;

    /** 조회 실패 등 안내 메시지 (예: "해당 이름·주민번호로 조회된 데이터가 없습니다") */
    private String message;

    /** 개인별 추천 직업훈련과정명 */
    private String recommendedCourseName;

    /** 어떤 직종에 취업했는지 */
    private String employedJobType;

    /** 급여수준 */
    private String salaryLevel;

    /** 취업처 목록 */
    private List<String> employers;

    /** 엑셀에서 유사한 Content로 찾은 추천 정보 Top5 (임베딩 유사도 순) */
    private List<SimilarCaseItem> top5Similar;
}
