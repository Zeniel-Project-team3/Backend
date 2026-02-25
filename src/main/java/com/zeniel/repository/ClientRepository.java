package com.zeniel.repository;

import com.zeniel.entity.client.Clients;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import java.util.Optional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface ClientRepository extends JpaRepository<Clients, Long> {

    @Query(
            value = """
                    SELECT
                        c.id            AS id,
                        c.name          AS name,
                        c.resident_id   AS residentId,
                        c.birth_date    AS birthDate,
                        c.phone         AS phone,
                        c.age           AS age,
                        c.gender        AS gender,
                        c.business_type AS businessType,
                        c.join_type     AS joinType,
                        c.join_stage    AS joinStage,
                        c.competency    AS competency,
                        c.desired_job   AS desiredJob,
                        c.address       AS address,
                        c.university    AS university,
                        c.major         AS major,
                    
                        e.company_name  AS companyName,
                        e.job_title     AS jobTitle,
                        e.salary        AS salary,
                        e.employ_date   AS employDate,
                        e.resign_date   AS resignDate
                    FROM clients c
                    LEFT JOIN employment e
                      ON e.id = (
                           SELECT e2.id
                           FROM employment e2
                           WHERE e2.client_id = c.id
                           ORDER BY
                               CASE WHEN e2.resign_date IS NULL THEN 0 ELSE 1 END,
                               e2.employ_date DESC,
                               e2.id DESC
                           LIMIT 1
                      )
                    """,
            countQuery = "SELECT COUNT(*) FROM clients",
            nativeQuery = true
    )
    Page<ClientListProjection> findClientList(Pageable pageable);

    Optional<Clients> findByNameAndResidentId(String name, String residentId);
}
