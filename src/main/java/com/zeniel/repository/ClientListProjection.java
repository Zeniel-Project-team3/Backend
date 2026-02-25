package com.zeniel.repository;

import java.time.LocalDate;

public interface ClientListProjection {

    Long getId();

    String getName();

    String getResidentId();

    LocalDate getBirthDate();

    String getPhone();

    Integer getAge();

    String getGender();

    String getBusinessType();

    String getJoinType();

    String getJoinStage();

    String getCompetency();

    String getDesiredJob();

    String getAddress();

    String getUniversity();

    String getMajor();

    String getCompanyName();

    String getJobTitle();

    Integer getSalary();

    LocalDate getEmployDate();

    LocalDate getResignDate();
}