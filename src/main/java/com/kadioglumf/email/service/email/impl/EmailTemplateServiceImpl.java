package com.kadioglumf.email.service.email.impl;

import com.kadioglumf.email.dto.EmailTemplateDto;
import com.kadioglumf.email.dto.EmailTemplatePlaceHolderDto;
import com.kadioglumf.email.exception.EmailServiceException;
import com.kadioglumf.email.mapper.EmailTemplateMapper;
import com.kadioglumf.email.model.EmailTemplateCommonPlaceHoldersModel;
import com.kadioglumf.email.model.EmailTemplateModel;
import com.kadioglumf.email.model.LanguageType;
import com.kadioglumf.email.payload.request.emailtemplate.EmailCommonPlaceHoldersRequest;
import com.kadioglumf.email.payload.request.emailtemplate.EmailTemplateRequest;
import com.kadioglumf.email.payload.request.search.SearchRequest;
import com.kadioglumf.email.payload.response.EmailTemplatePlaceHolderResponse;
import com.kadioglumf.email.payload.response.EmailTemplateResponse;
import com.kadioglumf.email.payload.response.error.ErrorType;
import com.kadioglumf.email.repository.EmailTemplateCommonPlaceHoldersRepository;
import com.kadioglumf.email.repository.EmailTemplateRepository;
import com.kadioglumf.email.service.email.EmailTemplateService;
import com.kadioglumf.email.service.redis.RedisUtility;
import com.kadioglumf.email.service.search.SearchExpressionType;
import com.kadioglumf.email.service.search.SearchRoleType;
import com.kadioglumf.email.service.search.SearchSpecification;
import com.kadioglumf.email.util.RedisKeyBuilderUtils;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Service
@Transactional
@RequiredArgsConstructor
public class EmailTemplateServiceImpl implements EmailTemplateService {

    private final EmailTemplateRepository emailTemplateRepository;
    private final EmailTemplateCommonPlaceHoldersRepository commonPlaceHoldersRepository;
    private final EmailTemplateMapper emailTemplateMapper;
    private final RedisUtility redisUtility;

    @Override
    public void saveOrUpdateTemplate(EmailTemplateRequest request) {
        for (var entry : request.getDetails().entrySet()) {
            EmailTemplateModel model = emailTemplateRepository.findByCodeAndLanguage(entry.getValue().getCode(), entry.getKey());
            if (model == null) {
                model = new EmailTemplateModel();
            }
            model.setCode(entry.getValue().getCode());
            model.setContent(entry.getValue().getContent());
            model.setSubject(entry.getValue().getSubject());
            model.setLanguage(entry.getKey());

            emailTemplateRepository.save(model);

            String key = RedisKeyBuilderUtils.buildRedisKey(RedisKeyBuilderUtils.PREFIX_TEMPLATE, entry.getValue().getCode(), entry.getKey().getValue());
            redisUtility.setValue(key, model);
        }
    }

    @Override
    public Page<EmailTemplateResponse> getAllTemplates(SearchRequest request) {
        SearchSpecification<EmailTemplateModel> specification = new SearchSpecification<>(request, SearchExpressionType.GET_ALL_TEMPLATES, SearchRoleType.ADMIN);
        Pageable pageable = SearchSpecification.getPageable(request.getPage(), request.getSize());
        Page<EmailTemplateModel> models = emailTemplateRepository.findAll(specification, pageable);

        return emailTemplateMapper.toEmailTemplateResponse(models);
    }

    @Override
    public EmailTemplateDto findByCodeAndLanguage(String code, LanguageType language) {
        String key = RedisKeyBuilderUtils.buildRedisKey(RedisKeyBuilderUtils.PREFIX_TEMPLATE, code, language.getValue());
        EmailTemplateModel model = redisUtility.getValue(key, EmailTemplateModel.class);
        if (model == null) {
            model = emailTemplateRepository.findByCodeAndLanguage(code, language);
            if (model == null) {
                throw new EmailServiceException(ErrorType.EMAIL_TEMPLATE_NOT_FOUND_ERROR
                        , "Email template not found with code: " + code);
            }
            redisUtility.setValue(key, model);
        }

        EmailTemplateDto dto = new EmailTemplateDto();
        dto.setContent(model.getContent());
        dto.setCode(model.getCode());
        dto.setSubject(model.getSubject());
        return dto;
    }

    @Override
    public void deleteTemplate(String code) {
        List<EmailTemplateModel> templateModels = emailTemplateRepository.findByCode(code);
        if (CollectionUtils.isEmpty(templateModels)) {
            throw new EmailServiceException(ErrorType.EMAIL_TEMPLATE_NOT_FOUND_ERROR);
        }
        for (EmailTemplateModel templateModel : templateModels) {
            String key = RedisKeyBuilderUtils.buildRedisKey(RedisKeyBuilderUtils.PREFIX_TEMPLATE, code, templateModel.getLanguage().getValue());
            redisUtility.deleteKey(key);
            emailTemplateRepository.delete(templateModel);
        }
    }

    @Override
    public void saveOrUpdatePlaceHolder(EmailCommonPlaceHoldersRequest request) {
        for (var entry : request.getDetails().entrySet()) {
            EmailTemplateCommonPlaceHoldersModel model = commonPlaceHoldersRepository.findByCodeAndLanguage(entry.getValue().getCode(), entry.getKey());
            if (model == null) {
                model = new EmailTemplateCommonPlaceHoldersModel();
            }
            model.setCode(entry.getValue().getCode());
            model.setValue(entry.getValue().getValue());
            model.setLanguage(entry.getKey());
            commonPlaceHoldersRepository.save(model);

            String key = RedisKeyBuilderUtils.buildRedisKey(RedisKeyBuilderUtils.PREFIX_PLACE_HOLDER, entry.getValue().getCode(), entry.getKey().getValue());
            redisUtility.setValue(key, model);
        }
    }

    @Override
    public Page<EmailTemplatePlaceHolderResponse> getAllPlaceHolders(SearchRequest request) {
        SearchSpecification<EmailTemplateCommonPlaceHoldersModel> specification = new SearchSpecification<>(request, SearchExpressionType.GET_ALL_PLACE_HOLDERS, SearchRoleType.ADMIN);
        Pageable pageable = SearchSpecification.getPageable(request.getPage(), request.getSize());
        Page<EmailTemplateCommonPlaceHoldersModel> models = commonPlaceHoldersRepository.findAll(specification, pageable);

        return emailTemplateMapper.toEmailTemplatePlaceHolderResponse(models);
    }

    @Override
    public void deletePlaceHolder(String code) {
        List<EmailTemplateCommonPlaceHoldersModel> placeHoldersModels = commonPlaceHoldersRepository.findByCode(code);
        if (CollectionUtils.isEmpty(placeHoldersModels)) {
            throw new EmailServiceException(ErrorType.EMAIL_TEMPLATE_PLACE_HOLDER_NOT_FOUND_ERROR);
        }
        for (EmailTemplateCommonPlaceHoldersModel placeHoldersModel : placeHoldersModels) {
            String key = RedisKeyBuilderUtils.buildRedisKey(RedisKeyBuilderUtils.PREFIX_PLACE_HOLDER, code, placeHoldersModel.getLanguage().getValue());
            redisUtility.deleteKey(key);
            commonPlaceHoldersRepository.delete(placeHoldersModel);
        }
    }

    @Override
    public EmailTemplatePlaceHolderDto findCommonPlaceHolderByCodeAndLang(String code, LanguageType language) {
        String key = RedisKeyBuilderUtils.buildRedisKey(RedisKeyBuilderUtils.PREFIX_PLACE_HOLDER, code, language.getValue());
        EmailTemplateCommonPlaceHoldersModel model = redisUtility.getValue(key, EmailTemplateCommonPlaceHoldersModel.class);

        if (model == null) {
            model = commonPlaceHoldersRepository.findByCodeAndLanguage(code, language);
            if (model != null) {
                redisUtility.setValue(key, model);
            }
        }

        return emailTemplateMapper.toEmailTemplatePlaceHolderDto(model);
    }

    @Override
    public Map<String, String> findCommonPlaceHoldersByCodeListAndLang(List<String> codes, LanguageType language) {
        List<String> keys = codes.stream().map(c-> RedisKeyBuilderUtils.buildRedisKey(RedisKeyBuilderUtils.PREFIX_PLACE_HOLDER, c, language.getValue())).collect(Collectors.toList());
        List<EmailTemplateCommonPlaceHoldersModel> placeHoldersModels = redisUtility.getValues(keys, EmailTemplateCommonPlaceHoldersModel.class);

        if (placeHoldersModels == null || codes.size() != placeHoldersModels.size()) {
            placeHoldersModels = commonPlaceHoldersRepository.findByCodeInAndLanguage(codes, language);

            if (!CollectionUtils.isEmpty(placeHoldersModels)) {
                Map<String, Object> value = new HashMap<>();
                for (EmailTemplateCommonPlaceHoldersModel model : placeHoldersModels) {
                    value.put(RedisKeyBuilderUtils.buildRedisKey(RedisKeyBuilderUtils.PREFIX_PLACE_HOLDER, model.getCode(), model.getLanguage().getValue()), model);
                }
                redisUtility.setValues(value);
            }
        }

        if (codes.size() != placeHoldersModels.size()) {
            throw new EmailServiceException(ErrorType.EMAIL_TEMPLATE_PLACE_HOLDER_NOT_FOUND_ERROR);
        }

        return placeHoldersModels.stream().collect(Collectors.toMap(EmailTemplateCommonPlaceHoldersModel::getCode, EmailTemplateCommonPlaceHoldersModel::getValue));
    }
}
