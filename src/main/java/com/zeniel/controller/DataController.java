package com.zeniel.controller;

import com.zeniel.dto.*;
import com.zeniel.service.ClientService;
import com.zeniel.service.DataService;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.web.PageableDefault;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;


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
    public ResponseEntity<Map<String, Object>> updateClientData(@Valid @RequestBody ClientRequest request) {
        return ResponseEntity.ok(clientService.updateClientData(request));
    }

    @PostMapping("/training/{clientId}")
    public ResponseEntity<Void> addTrainings(@RequestBody CreateTrainingRequest request, @PathVariable Long clientId) {
        dataService.addTrainings(request, clientId);
        return ResponseEntity.ok().build();
    }
}
