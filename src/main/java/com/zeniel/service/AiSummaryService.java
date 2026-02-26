package com.zeniel.service;

import lombok.RequiredArgsConstructor;
import org.springframework.ai.chat.client.ChatClient;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AiSummaryService {
    private final ChatClient chatClient;

    public String summarize(String rawText) {

        String prompt = """
                다음은 취업 상담 내용입니다.
                아래 5가지 항목으로 반드시 정리해주세요.
                
                - 상담일자:
                - 주요 상담 내용:
                - 희망 직종:
                - 보유 스킬:
                - 취업 장애 요인:
                
                상담 내용:
                %s
                """.formatted(rawText);

        return chatClient.prompt()
                .user(prompt)
                .call()
                .content();
    }
}
