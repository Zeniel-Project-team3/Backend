package com.zeniel.utility;

import org.springframework.stereotype.Component;

import com.zeniel.entity.client.Clients;

@Component
public class ContextBuilder {
    public String build(Clients client) {

        return """
                [기본정보]
                나이: %d
                성별: %s
                희망직종: %s
                """.formatted(
                client.getAge(),
                client.getGender(),
                client.getDesiredJob()
            );
    }
}
