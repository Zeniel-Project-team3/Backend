package com.zeniel.repository;

import com.zeniel.entity.client.Clients;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClientRepository extends JpaRepository<Clients, Long> {
}
