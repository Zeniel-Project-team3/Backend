package com.zeniel.utility;

import java.util.List;
import java.util.Map;

import org.springframework.ai.embedding.EmbeddingModel;
import org.springframework.ai.embedding.EmbeddingRequest;
import org.springframework.ai.embedding.EmbeddingResponse;
import org.springframework.ai.openai.OpenAiEmbeddingOptions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.zeniel.entity.Consultation;
import com.zeniel.entity.client.Clients;
import com.zeniel.entity.client.Education;
import com.zeniel.entity.client.Gender;

import io.micrometer.observation.Observation.Context;
import lombok.extern.slf4j.Slf4j;

// @RequiredArgsConstructor
@Service
@Slf4j
public class EmbeddingService {
    // private ChatClient chatClient;

    @Autowired
    private EmbeddingModel embeddingModel;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private ContextBuilder contextBuilder;

    // private final OpenAIClient openAIClient;


    // public EmbeddingService(ChatClient.Builder chatClientBuilder) {
    //     chatClient = chatClientBuilder.build();
    // }

    public float[] createEmbedding(String text) {
        EmbeddingResponse response = this.embeddingModel.call(
            new EmbeddingRequest(
                List.of(text),
                OpenAiEmbeddingOptions.builder()
                    .model("text-embedding-3-small")
                    .build()
            )
        );

        float[] vector = response.getResults().get(0).getOutput();
        return vector;
    }

    public void saveVector(Long clientId) {

        String sql = """
                SELECT * FROM clients
                WHERE id = ?
                """;

        List<Map<String, Object>> list = jdbcTemplate.queryForList(sql, clientId);
        // log.info("client: {}", list);

        // 🔥 context 생성
        // client.getAge(),
        //         client.getGender(),
        //         client.getEducation(),
        //         client.getDesiredJob(),
        //         client.getCompetency()

        String stringGender = (String) list.get(0).get("gender");
        Gender gender;
        if (stringGender.equals("남")) {
            gender = Gender.valueOf("MALE");
        } else {
            gender = Gender.valueOf("FEMALE");
        }

        String stringEducation = (String) list.get(0).get("education");
        Education education;
        if (stringEducation.equals("대졸")) {
            education = Education.valueOf("UNIVERSITY");
        } else if (stringEducation.equals("초대졸")) {
            education = Education.valueOf("COLLEGE");
        } else if (stringEducation.equals("고졸")) {
            education = Education.valueOf("HIGH_SCHOOL");
        } else {
            education = Education.valueOf("MIDDLE_SCHOOL");
        }

        Clients client = Clients.builder()
            .age((Integer) list.get(0).get("age"))
            .gender(gender)
            .education(education)
            .desiredJob((String) list.get(0).get("desired_job"))
            .competency((String) list.get(0).get("competency"))
            .build();

        // sql = """
        //         SELECT 상담내역 FROM participants
        //         WHERE 연락처 = ?
        //         """;

        // String phone = (String) list.get(0).get("phone");
        // list = jdbcTemplate.queryForList(sql, phone);
        // String consultationSummary = (String) list.get(0).get("상담내역");
        // log.info("consultation: {}", consultationSummary);

        String context = contextBuilder.build(client);
        // consultation.setContextText(context);
        log.info("context: {}", context);

        // 🔥 임베딩 생성
        float[] embedding = createEmbedding(context);
        sql = """
                UPDATE clients SET embedding = ?
                WHERE id = ?
                """;
        jdbcTemplate.update(sql, embedding, clientId);
        // log.info("embedding: {}", embedding);
        // consultation.setEmbedding(embedding);

        // consultationRepository.save(consultation);
    }
}
