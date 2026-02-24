package com.zeniel.job.service;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.zeniel.job.dto.JobRecommendationRequest;
import com.zeniel.job.dto.JobRecommendationResponse;
import com.zeniel.job.dto.SimilarCaseItem;
import com.zeniel.job.dto.UserInfoDto;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * 상담리스트 엑셀 데이터 + 임베딩 유사도(Top5) + GPT를 이용한 직업/훈련과정 추천
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class JobRecommendationService {

    private static final int EXCEL_CONTEXT_ROWS = 30;
    private static final ObjectMapper OBJECT_MAPPER = new ObjectMapper();

    private final ExcelDataService excelDataService;
    private final EmbeddingSimilarityService embeddingSimilarityService;
    private final ChatClient.Builder chatClientBuilder;

    public JobRecommendationResponse recommend(JobRecommendationRequest request) {
        // 1) 사용자 정보 A 결정: 이름+주민번호면 엑셀에서 조회, 없으면 요청 body의 A 필드 사용
        UserInfoDto userInfoA = resolveUserInfo(request);
        if (userInfoA == null) {
            return JobRecommendationResponse.builder()
                .extractedUserInfo(null)
                .message("해당 이름·주민등록번호로 조회된 데이터가 없습니다. 엑셀 경로와 엑셀 내 '이름', '주민등록번호' 컬럼을 확인해 주세요.")
                .build();
        }

        // 2) 임베딩으로 유사한 엑셀 행 Top5 추출 (A 기준)
        String queryText = buildQueryTextFromUserInfo(userInfoA);
        List<SimilarCaseItem> top5Similar = embeddingSimilarityService.findTop5Similar(queryText);

        // GPT 컨텍스트: 유사 Top5가 있으면 그걸 사용, 없으면 기존처럼 상위 30행
        String contextSummary;
        if (!top5Similar.isEmpty()) {
            contextSummary = top5Similar.stream()
                .map(item -> "유사도=" + String.format("%.3f", item.getSimilarityScore()) + " | " + rowToLine(item.getRow()))
                .collect(Collectors.joining("\n"));
        } else {
            List<Map<String, String>> allRows = excelDataService.loadAllRows();
            contextSummary = buildContextSummary(allRows);
        }

        String userPrompt = buildUserPromptFromUserInfo(userInfoA, contextSummary);
        String systemPrompt = """
            당신은 취업 상담 전문가입니다. 상담 리스트 데이터를 참고하여, 요청자 정보에 맞는 직업훈련과정과 취업 추천을 해주세요.
            반드시 아래 JSON 형식으로만 답변하세요. 다른 설명은 붙이지 마세요.
            {
              "recommendedCourseName": "추천 직업훈련과정명 한 개",
              "employedJobType": "취업 가능 직종 설명",
              "salaryLevel": "예상 급여수준 (예: 2500만원~3000만원)",
              "employers": ["취업처1", "취업처2", "취업처3"]
            }
            employers는 최대 5개까지 구체적인 회사/기관 유형이나 직종을 나열하세요.
            """;

        try {
            ChatClient client = chatClientBuilder.build();
            String raw = client.prompt()
                .system(systemPrompt)
                .user(userPrompt)
                .call()
                .content();

            JobRecommendationResponse response = parseResponse(raw);
            response.setExtractedUserInfo(userInfoA);
            response.setTop5Similar(top5Similar);
            return response;
        } catch (Exception e) {
            log.warn("GPT 추천 실패, 기본값 반환: {}", e.getMessage());
            JobRecommendationResponse response = fallbackResponse(userInfoA);
            response.setExtractedUserInfo(userInfoA);
            response.setTop5Similar(top5Similar);
            return response;
        }
    }

    /** 이름+주민번호면 엑셀에서 행 조회 후 A 추출, 아니면 요청 body로 A 구성 */
    private UserInfoDto resolveUserInfo(JobRecommendationRequest req) {
        if (req.getName() != null && !req.getName().isBlank()
            && req.getResidentNo() != null && !req.getResidentNo().isBlank()) {
            return excelDataService.findRowByNameAndResidentNo(req.getName(), req.getResidentNo())
                .map(excelDataService::extractUserInfoFromRow)
                .orElse(null);
        }
        // 이름·주민번호 없으면 요청 body의 A 필드로 구성 (직접 입력)
        UserInfoDto fromRequest = UserInfoDto.builder()
            .age(nullToEmpty(req.getAge()))
            .gender(nullToEmpty(req.getGender()))
            .competency(nullToEmpty(req.getCompetency()))
            .desiredJob(nullToEmpty(req.getDesiredJob()))
            .counselingNote(nullToEmpty(req.getCounselingNote()))
            .address(nullToEmpty(req.getAddress()))
            .school(nullToEmpty(req.getSchool()))
            .major(nullToEmpty(req.getMajor()))
            .educationLevel(nullToEmpty(req.getEducationLevel()))
            .build();
        return fromRequest;
    }

    /** 임베딩 유사도 검색용 쿼리 텍스트 (UserInfo A 기준) */
    private String buildQueryTextFromUserInfo(UserInfoDto a) {
        return String.join(" ",
            nullToEmpty(a.getAge()),
            nullToEmpty(a.getGender()),
            nullToEmpty(a.getCompetency()),
            nullToEmpty(a.getDesiredJob()),
            nullToEmpty(a.getCounselingNote()),
            nullToEmpty(a.getAddress()),
            nullToEmpty(a.getSchool()),
            nullToEmpty(a.getMajor()),
            nullToEmpty(a.getEducationLevel())
        ).trim();
    }

    private String buildContextSummary(List<Map<String, String>> rows) {
        if (rows.isEmpty()) return "(참고 데이터 없음)";
        int take = Math.min(EXCEL_CONTEXT_ROWS, rows.size());
        return rows.stream()
            .limit(take)
            .map(this::rowToLine)
            .collect(Collectors.joining("\n"));
    }

    private String rowToLine(Map<String, String> row) {
        return row.entrySet().stream()
            .map(e -> e.getKey() + "=" + (e.getValue() == null ? "" : e.getValue()))
            .collect(Collectors.joining(" | "));
    }

    private String buildUserPromptFromUserInfo(UserInfoDto a, String contextSummary) {
        return """
            [요청자 정보]
            나이: %s
            성별: %s
            역량: %s
            희망직종: %s
            상담내역: %s
            주소: %s
            학교: %s
            전공: %s
            최종학력: %s

            [참고 상담 리스트 데이터 - 유사 사례]
            %s

            위 요청자에게 맞는 추천을 JSON 형식으로만 답해주세요.
            """
            .formatted(
                nullToEmpty(a.getAge()),
                nullToEmpty(a.getGender()),
                nullToEmpty(a.getCompetency()),
                nullToEmpty(a.getDesiredJob()),
                nullToEmpty(a.getCounselingNote()),
                nullToEmpty(a.getAddress()),
                nullToEmpty(a.getSchool()),
                nullToEmpty(a.getMajor()),
                nullToEmpty(a.getEducationLevel()),
                contextSummary
            );
    }

    private static String nullToEmpty(String s) {
        return s == null ? "" : s;
    }

    private JobRecommendationResponse parseResponse(String raw) {
        String json = raw;
        int start = raw.indexOf('{');
        int end = raw.lastIndexOf('}');
        if (start >= 0 && end > start) {
            json = raw.substring(start, end + 1);
        }
        try {
            JsonNode node = OBJECT_MAPPER.readTree(json);
            List<String> employers = new ArrayList<>();
            if (node.has("employers") && node.get("employers").isArray()) {
                node.get("employers").forEach(e -> employers.add(e.asText()));
            }
            return JobRecommendationResponse.builder()
                .recommendedCourseName(node.has("recommendedCourseName") ? node.get("recommendedCourseName").asText() : null)
                .employedJobType(node.has("employedJobType") ? node.get("employedJobType").asText() : null)
                .salaryLevel(node.has("salaryLevel") ? node.get("salaryLevel").asText() : null)
                .employers(employers)
                .build();
        } catch (Exception e) {
            log.warn("GPT 응답 파싱 실패: {}", e.getMessage());
            return JobRecommendationResponse.builder()
                .recommendedCourseName("(파싱 실패)")
                .employedJobType(raw)
                .salaryLevel("")
                .employers(List.of())
                .build();
        }
    }

    private JobRecommendationResponse fallbackResponse(UserInfoDto a) {
        return JobRecommendationResponse.builder()
            .recommendedCourseName("상담 데이터 기반 맞춤 훈련과정 (상담원 문의)")
            .employedJobType(a != null ? nullToEmpty(a.getDesiredJob()) : "")
            .salaryLevel("해당 직종 평균 참고")
            .employers(List.of("지역 취업센터 문의", "훈련기관 취업지원팀 문의"))
            .build();
    }
}
