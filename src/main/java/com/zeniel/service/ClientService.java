package com.zeniel.service;

import com.zeniel.dto.ClientRegisterRequest;
import com.zeniel.dto.ClientRegisterResponse;
import com.zeniel.repository.ClientRepository;
import com.zeniel.utility.ContextBuilder;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.zeniel.dto.ClientRequest;
import com.zeniel.entity.client.Clients;
import com.zeniel.utility.EmbeddingService;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class ClientService {

    @Autowired
    private ContextBuilder contextBuilder;

    @Autowired
    private ClientRepository clientRepository;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    @Autowired
    private EmbeddingService embeddingService;

    @Transactional
    public Map<String, Object> updateClientData(ClientRequest request) {
        log.info("id: {}", request.getId());

        // 주소
        String newAddress = request.getAddress();

        // 교육 정보
        String newEducation = request.getEducation().toString();
        switch (newEducation) {
            case "UNIVERSITY":
                newEducation = "대졸";
                break;
            case "COLLEGE":
                newEducation = "초대졸";
                break;
            case "HIGH_SCHOOL":
                newEducation = "고졸";
                break;
            default:
                newEducation = "중졸이하";
                break;
        }
        String newUniversity = request.getUniversity();
        String newMajor = request.getMajor();

        // 직업 및 참여 정보
        String newBusinessType = request.getBusinessType();
        String newJoinType = request.getJoinType();
        String newJoinStage = request.getJoinStage();
        String newCompetency = request.getCompetency();
        String newDesiredJob = request.getDesiredJob();

        // 동적 SQL 빌드
        StringBuilder sqlBuilder = new StringBuilder("UPDATE clients SET ");
        List<Object> params = new ArrayList<>();
        boolean first = true;

        if (newAddress != null && !newAddress.trim().isEmpty()) {
            sqlBuilder.append("address = ?");
            params.add(newAddress);
            first = false;
        }

        // education field (enum 변환 후 체크)
        String eduValue = null;
        if (request.getEducation() != null) {
            eduValue = request.getEducation().toString();
            switch (eduValue) {
                case "UNIVERSITY":
                    eduValue = "대졸";
                    break;
                case "COLLEGE":
                    eduValue = "초대졸";
                    break;
                case "HIGH_SCHOOL":
                    eduValue = "고졸";
                    break;
                default:
                    eduValue = "중졸이하";
                    break;
            }
        }
        if (eduValue != null && !eduValue.trim().isEmpty()) {
            if (!first) sqlBuilder.append(", ");
            sqlBuilder.append("education = ?");
            params.add(eduValue);
            first = false;
        }

        if (newUniversity != null && !newUniversity.trim().isEmpty()) {
            if (!first) sqlBuilder.append(", ");
            sqlBuilder.append("university = ?");
            params.add(newUniversity);
            first = false;
        }

        if (newMajor != null && !newMajor.trim().isEmpty()) {
            if (!first) sqlBuilder.append(", ");
            sqlBuilder.append("major = ?");
            params.add(newMajor);
            first = false;
        }

        if (newBusinessType != null && !newBusinessType.trim().isEmpty()) {
            if (!first) sqlBuilder.append(", ");
            sqlBuilder.append("business_type = ?");
            params.add(newBusinessType);
            first = false;
        }

        if (newJoinType != null && !newJoinType.trim().isEmpty()) {
            if (!first) sqlBuilder.append(", ");
            sqlBuilder.append("join_type = ?");
            params.add(newJoinType);
            first = false;
        }

        if (newJoinStage != null && !newJoinStage.trim().isEmpty()) {
            if (!first) sqlBuilder.append(", ");
            sqlBuilder.append("join_stage = ?");
            params.add(newJoinStage);
            first = false;
        }

        if (newCompetency != null && !newCompetency.trim().isEmpty()) {
            if (!first) sqlBuilder.append(", ");
            sqlBuilder.append("competency = ?");
            params.add(newCompetency);
            first = false;
        }

        if (newDesiredJob != null && !newDesiredJob.trim().isEmpty()) {
            if (!first) sqlBuilder.append(", ");
            sqlBuilder.append("desired_job = ?");
            params.add(newDesiredJob);
            first = false;
        }

        sqlBuilder.append(" WHERE id = ?");
        params.add(request.getId());

        jdbcTemplate.update(sqlBuilder.toString(), params.toArray());

        String sql = """
                SELECT * FROM clients WHERE id = ?
                """;
        Map<String, Object> updated = jdbcTemplate.queryForList(sql, request.getId()).get(0);

        // 임베딩 반영
        embeddingService.saveVector(request.getId());
        return updated;        
    }

    @Transactional
    public ClientRegisterResponse register(ClientRegisterRequest request) {

        clientRepository.findByNameAndResidentId(request.getName(), request.getResidentId())
                .ifPresent(c -> {
                    throw new IllegalArgumentException("이미 등록된 내담자입니다.");
                });

        // 1단계: client 엔티티 생성 후 DB 저장
        Clients client = Clients.builder()
                .name(request.getName())
                .phone(request.getPhone())
                .residentId(request.getResidentId())
                .age(request.getAge())
                .gender(request.getGender())
                .competency(request.getCompetency())
                .desiredJob(request.getDesiredJob())
                .address(request.getAddress())
                .university(request.getUniversity())
                .major(request.getMajor())
                .education(request.getEducation())
                .build();

        clientRepository.save(client);

        // 2단계: 8개 필드를 텍스트로 조합
        String contextText = contextBuilder.build(client);

        // 3단계: 임베딩 생성
        float[] embedding = embeddingService.createEmbedding(contextText);

        // 4단계: 임베딩 저장
        client.setEmbedding(embedding);

        // 5단계: 응답 반환
        return new ClientRegisterResponse(
                client.getId(),
                client.getName(),
                "DONE",
                "내담자가 성공적으로 등록되었습니다."
        );
    }
}
