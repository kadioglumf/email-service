package com.kadioglumf.email.repository;

import com.kadioglumf.email.model.EmailTemplateModel;
import com.kadioglumf.email.model.LanguageType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface EmailTemplateRepository extends JpaRepository<EmailTemplateModel, Long>, JpaSpecificationExecutor<EmailTemplateModel> {

    EmailTemplateModel findByCodeAndLanguage(String code, LanguageType languageType);

    List<EmailTemplateModel> findByCode(String code);
}
