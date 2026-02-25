package com.zeniel.controller;

import com.zeniel.dto.ConsultationUploadRequest;
import com.zeniel.dto.ConsultationUploadResponse;
import com.zeniel.service.ConsultationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequestMapping("/api/consultation")
@RequiredArgsConstructor
public class ConsultationController {

    private final ConsultationService consultationService;

    @PostMapping("/upload")
    public ResponseEntity<ConsultationUploadResponse> upload(
            @RequestPart("file") MultipartFile file,
            @RequestPart("request") ConsultationUploadRequest request
    ) {

        ConsultationUploadResponse response =
                consultationService.upload(file, request);

        return ResponseEntity.ok(response);
    }
}
