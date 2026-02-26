package com.zeniel.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class ClientRegisterResponse {

    private Long clientId;      // 저장된 client ID
    private String clientName;  // 이름
    private String status;      // 처리 상태 (예: "DONE")
    private String message;     // 결과 메시지
}
