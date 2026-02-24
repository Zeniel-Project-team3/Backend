package com.zeniel.job.controller;

import com.zeniel.job.dto.JobRecommendationRequest;
import com.zeniel.job.dto.JobRecommendationResponse;
import com.zeniel.job.service.JobRecommendationService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

/**
 * 직업/훈련과정 추천 API
 * - 입력: 나이, 성별, 역량, 희망직종, 상담내역, 주소, 학교, 전공, 최종학력
 * - 출력: 추천 직업훈련과정명, 취업직종, 급여수준, 취업처 목록 (GPT + 엑셀 데이터 기반)
 */
@RestController
@RequestMapping("/api")
@RequiredArgsConstructor
public class JobRecommendationController {

    private final JobRecommendationService jobRecommendationService;

    @PostMapping("/recommend")
    public ResponseEntity<JobRecommendationResponse> recommend(@Valid @RequestBody JobRecommendationRequest request) {
        JobRecommendationResponse response = jobRecommendationService.recommend(request);
        return ResponseEntity.ok(response);
    }
}
