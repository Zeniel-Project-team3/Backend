package com.zeniel.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;

import com.zeniel.entity.client.Clients;

@Service
public class ClientService {
    @Autowired
    private JdbcTemplate jdbcTemplate;

    public Map<String, Object> updateClientData(Clients request) throws Exception {
        // 주소
        String newAddress = request.getAddress();
        if (newAddress == null || newAddress.equals("")) {
            throw new Exception("주소값은 필수입니다.");
        }

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

        String sql = """
                UPDATE clients 
                SET address = ?,

                    education = ?,
                    university = ?,
                    major = ?,

                    business_type = ?,
                    join_type = ?,
                    join_stage = ?,
                    competency = ?,
                    desired_job = ?
                WHERE id = ?
                """;

        jdbcTemplate.update(sql, 
            newAddress, 
            newEducation, newUniversity, newMajor, 
            newBusinessType, newJoinType, newJoinStage, newCompetency, newDesiredJob, 
            request.getId()
        );

        sql = """
                SELECT * FROM clients WHERE id = ?
                """;
        Map<String, Object> updated = jdbcTemplate.queryForList(sql, request.getId()).get(0);
        return updated;        
    }
}
