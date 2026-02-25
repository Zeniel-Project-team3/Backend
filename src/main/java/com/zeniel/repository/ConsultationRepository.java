package com.zeniel.repository;

import com.zeniel.entity.training.Training;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConsultationRepository extends JpaRepository<Training, Long> {
}
