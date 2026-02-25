package com.zeniel.controller;

import com.zeniel.dto.ClientListResponse;
import com.zeniel.dto.ConsultationListResponse;
import com.zeniel.dto.TrainingListResponse;
import com.zeniel.entity.client.Clients;
import com.zeniel.service.ClientService;
import com.zeniel.service.DataService;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;


@RestController
@RequestMapping("/api/data")
@RequiredArgsConstructor
public class DataController {

    private final DataService dataService;
    private final ClientService clientService;

    @GetMapping
    public ResponseEntity<Page<ClientListResponse>> getAllClients(@PageableDefault(size = 20, sort = "id", direction = Sort.Direction.DESC) Pageable pageable) {
        return ResponseEntity.ok(dataService.getAllClients(pageable));
    }

    @GetMapping("/training/{clientId}")
    public ResponseEntity<List<TrainingListResponse>> getTrainings(@PathVariable Long clientId) {
        return ResponseEntity.ok(dataService.getTrainings(clientId));
    }

    @GetMapping("/consultation/{clientId}")
    public ResponseEntity<List<ConsultationListResponse>> getConsultation(@PathVariable Long clientId) {
        return ResponseEntity.ok(dataService.getConsultation(clientId));
    }

    // 특정 client의 정보를 request에 적힌대로 수정
    @PutMapping("/client")
    public ResponseEntity<Map<String, Object>> updateClientData(@RequestBody Clients request) {
        try {
            return ResponseEntity.ok(clientService.updateClientData(request));
        } catch (Exception e) {
            return ResponseEntity.internalServerError().body(Map.of("message", e.getMessage()));
        }   
    }
}
