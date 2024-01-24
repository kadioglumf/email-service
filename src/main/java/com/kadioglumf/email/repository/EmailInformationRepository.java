package com.kadioglumf.email.repository;

import com.kadioglumf.email.model.EmailInformationModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface EmailInformationRepository extends JpaRepository<EmailInformationModel, Long> {
    EmailInformationModel findTopByEmailOrderByCreationDateDesc(String email);
}
