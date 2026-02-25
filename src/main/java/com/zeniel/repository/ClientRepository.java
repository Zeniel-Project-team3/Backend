package com.zeniel.repository;

import com.zeniel.entity.client.Clients;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ClientRepository extends JpaRepository<Clients, Long> {

    Optional<Clients> findByNameAndResidentId(String name, String residentId);
}
