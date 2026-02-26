package com.zeniel.utility;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class EmbeddingController {
    @Autowired
    private EmbeddingService embeddingService;

    @GetMapping("/")
    public String embedding(@RequestParam("clientId") Long clientId) {
        embeddingService.saveVector(clientId);
        return "콘솔 확인";
    }

    @PutMapping("/embeddingTest")
    public String embedding() {
        for (Long i = 1L; i <= 150L; i++) {
            embeddingService.saveVector(i);
        }
        return "콘솔 확인";
    }

    @PutMapping("/embedding")
    public String updateEmbedding(@RequestParam("clientId") Long clientId) {
        embeddingService.saveVector(clientId);
        return "콘솔 확인";
    }
    
}
