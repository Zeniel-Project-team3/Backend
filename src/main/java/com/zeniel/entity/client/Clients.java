package com.zeniel.entity.client;

import com.zeniel.entity.BaseTimeEntity;
import com.zeniel.entity.Consultation;
import com.zeniel.entity.Employment;
import com.zeniel.entity.training.Training;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.Array;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.type.SqlTypes;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import static lombok.Builder.Default;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@AllArgsConstructor
@Builder
@Setter
public class Clients extends BaseTimeEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(nullable = false, length = 50)
    private String name;

    @Column
    private LocalDate birthDate;

    @Column(length = 14, unique = true)
    private String residentId; // 주민번호

    @Column(length = 20)
    private String phone; // 연락처 - 숫자만 저장

    @Column
    private Integer age;

    @Column
    @Enumerated(EnumType.STRING)
    private Gender gender;

    @Column
    @Enumerated(EnumType.STRING)
    private Education education; // 최종학력

    @Column(length = 10)
    private String businessType; // 사업 유형

    @Column
    private String joinType; // 참여 유형

    @Column
    private String joinStage; // 참여 단계

    @Column(length = 1)
    private String competency; // 역량 등급

    @Column
    private String desiredJob; // 희망 직종

    @Column
    private String address;

    @Column
    private String university; // 학교

    @Column
    private String major; // 전공

    @JdbcTypeCode(SqlTypes.VECTOR)
    @Array(length = 1536)
    @Column(columnDefinition = "vector(1536)")
    private float[] embedding;

    @Default
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "client_id")
    private List<Consultation> consultations = new ArrayList<>();

    @Default
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "client_id")
    private List<Training> trainings = new ArrayList<>();

    @Default
    @OneToMany(cascade = CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name = "client_id")
    private List<Employment> employments = new ArrayList<>();
}