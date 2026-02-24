package com.zeniel.job.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Map;

/**
 * 엑셀에서 임베딩 유사도로 찾은 유사 케이스 1건
 */
@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SimilarCaseItem {

    /** 유사도 점수 (0~1, 코사인 유사도) */
    private double similarityScore;

    /** 해당 행 원본 데이터 (컬럼명 -> 값) */
    private Map<String, String> row;
}
