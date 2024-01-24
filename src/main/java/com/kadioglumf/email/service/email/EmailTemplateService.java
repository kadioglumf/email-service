package com.kadioglumf.email.service.email;

import com.kadioglumf.email.dto.EmailTemplateDto;
import com.kadioglumf.email.dto.EmailTemplatePlaceHolderDto;
import com.kadioglumf.email.model.LanguageType;
import com.kadioglumf.email.payload.request.emailtemplate.EmailCommonPlaceHoldersRequest;
import com.kadioglumf.email.payload.request.emailtemplate.EmailTemplateRequest;
import com.kadioglumf.email.payload.request.search.SearchRequest;
import com.kadioglumf.email.payload.response.EmailTemplatePlaceHolderResponse;
import com.kadioglumf.email.payload.response.EmailTemplateResponse;
import org.springframework.data.domain.Page;

import java.util.List;
import java.util.Map;

public interface EmailTemplateService {

    void saveOrUpdateTemplate(EmailTemplateRequest request);

    Page<EmailTemplateResponse> getAllTemplates(SearchRequest request);

    EmailTemplateDto findByCodeAndLanguage(String code, LanguageType language);

    void deleteTemplate(String code);

    void saveOrUpdatePlaceHolder(EmailCommonPlaceHoldersRequest request);

    Page<EmailTemplatePlaceHolderResponse> getAllPlaceHolders(SearchRequest request);

    void deletePlaceHolder(String code);

    EmailTemplatePlaceHolderDto findCommonPlaceHolderByCodeAndLang(String code, LanguageType language);

    Map<String, String> findCommonPlaceHoldersByCodeListAndLang(List<String> codes, LanguageType language);
}
