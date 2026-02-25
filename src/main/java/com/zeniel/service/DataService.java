package com.zeniel.service;

import com.zeniel.dto.ClientListResponse;
import com.zeniel.dto.ConsultationListResponse;
import com.zeniel.dto.TrainingListResponse;
import com.zeniel.repository.ClientListProjection;
import com.zeniel.repository.ClientRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class DataService {

    private final ClientRepository clientRepository;

    public Page<ClientListResponse> getAllClients(Pageable pageable) {
        return clientRepository.findClientList(pageable)
                .map(this::toResponse);
    }

    private ClientListResponse toResponse(ClientListProjection p) {
        return new ClientListResponse(
                p.getId(),
                p.getName(),
                p.getResidentId(),
                p.getBirthDate(),
                p.getPhone(),
                p.getAge(),
                p.getGender(),
                p.getBusinessType(),
                p.getJoinType(),
                p.getJoinStage(),
                p.getCompetency(),
                p.getDesiredJob(),
                p.getAddress(),
                p.getUniversity(),
                p.getMajor(),
                p.getCompanyName(),
                p.getJobTitle(),
                p.getSalary(),
                p.getEmployDate(),
                p.getResignDate()
        );
    }

    public List<TrainingListResponse> getTrainings(Long clientId) {
        return clientRepository.findById(clientId)
                .orElseThrow(() -> new RuntimeException("상담자 정보가 존재하지 않습니다."))
                .getTrainings().stream().map(
                        v -> new TrainingListResponse(v.getId(), v.getCourseName(), v.getStartDate(),
                                v.getEndDate(), v.getAllowance(), v.getCompleted()
                        )
                ).toList();
    }

    public List<ConsultationListResponse> getConsultation(Long clientId) {
        return clientRepository.findById(clientId)
                .orElseThrow(() -> new RuntimeException("상담자 정보가 존재하지 않습니다."))
                .getConsultations().stream().map(v -> new ConsultationListResponse(
                        v.getId(), v.getConsultDate(), v.getRawText(), v.getSummary()
                        , v.getIapDate(), v.getIapPeriod()))
                .toList();
    }
}
