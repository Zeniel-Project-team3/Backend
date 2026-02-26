package com.zeniel.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class AiRequestDto { // ai 상담시나리오 요청
    private Long clientId;
    @Builder.Default
    private int topK = 5; // 유사한 상담 시나리오 몇 개를 가져올지
}
