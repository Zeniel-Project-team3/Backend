package com.zeniel.dto;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
@JsonIgnoreProperties(ignoreUnknown = true) // 혹시 응답에 필드 추가돼도 안 터지게
public class AiResponseDto {

    private Long clientId;
    private MaskedInput maskedInput;
    private String queryText;
    private List<SimilarCase> similarCases;
    private Recommendation recommendation;

    @Getter @Setter
    @NoArgsConstructor @AllArgsConstructor @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class MaskedInput {
        private Long clientId;
        private String name;
        private String residentId;
        private Integer age;
        private String gender;      // MALE/FEMALE (네 프로젝트 enum이면 enum으로 바꿔도 됨)
        private String education;   // COLLEGE/UNIVERSITY... (enum이면 enum)
        private String desiredJob;
        private String competency;  // C/D... (enum이면 enum)
        private String address;
        private String university;
        private String major;
    }

    @Getter @Setter
    @NoArgsConstructor @AllArgsConstructor @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class SimilarCase {
        private Long clientId;
        private Double score;
        private Integer age;
        private String gender;
        private String desiredJob;
        private String competency;
        private String education;
        private String major;
        private String university;

        private String jobTitle;
        private String companyName;
        private Integer salary;

        private List<String> trainings;
        private String consultationSummary;
    }

    @Getter @Setter
    @NoArgsConstructor @AllArgsConstructor @Builder
    @JsonIgnoreProperties(ignoreUnknown = true)
    public static class Recommendation {
        private List<String> recommendedJobsByProfile;
        private List<String> recommendedJobsByDesiredJob;
        private List<String> recommendedTrainings;
        private List<String> recommendedCompanies;

        private String expectedSalaryRange;
        private List<String> suggestedServices;
        private List<String> coreQuestions;

        private String reason;
    }
}