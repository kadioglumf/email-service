package com.kadioglumf.email.repository;

import com.kadioglumf.email.model.EmailTemplateCommonPlaceHoldersModel;
import com.kadioglumf.email.model.LanguageType;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;

import java.util.List;

public interface EmailTemplateCommonPlaceHoldersRepository extends JpaRepository<EmailTemplateCommonPlaceHoldersModel, Long>
        , JpaSpecificationExecutor<EmailTemplateCommonPlaceHoldersModel> {

    EmailTemplateCommonPlaceHoldersModel findByCodeAndLanguage(String code, LanguageType language);

    List<EmailTemplateCommonPlaceHoldersModel> findByCodeInAndLanguage(List<String> code, LanguageType language);

    List<EmailTemplateCommonPlaceHoldersModel> findByCode(String code);
}
