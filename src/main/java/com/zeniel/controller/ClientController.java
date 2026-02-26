package com.zeniel.controller;

import com.zeniel.dto.ClientRegisterRequest;
import com.zeniel.dto.ClientRegisterResponse;
import com.zeniel.service.ClientService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/client")
@RequiredArgsConstructor
public class ClientController {

    private final ClientService clientService;

    @PostMapping("/register")
    public ResponseEntity<ClientRegisterResponse> register(
            @RequestBody ClientRegisterRequest request
    ) {
        ClientRegisterResponse response = clientService.register(request);
        return ResponseEntity.ok(response);
    }
}
