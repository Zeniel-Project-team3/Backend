package com.zeniel.repository;

import com.zeniel.entity.Consultation;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClientConsultationRepository extends JpaRepository<Consultation, Long> {
}
