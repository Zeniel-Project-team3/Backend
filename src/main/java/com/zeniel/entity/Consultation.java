package com.zeniel.entity;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
@Setter
public class Consultation extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column
    private LocalDate consultDate; // 상담 일자

    @Column(columnDefinition = "text")
    private String rawText; // 상담 내용 - 원문

    @Column(columnDefinition = "text")
    private String summary; // 상담 내용 - AI 요약

    @Column
    private LocalDate iapDate;

    @Column
    private Integer iapPeriod;
}
