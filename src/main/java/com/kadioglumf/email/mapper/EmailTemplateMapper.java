package com.kadioglumf.email.mapper;

import com.kadioglumf.email.dto.EmailTemplatePlaceHolderDto;
import com.kadioglumf.email.model.EmailTemplateCommonPlaceHoldersModel;
import com.kadioglumf.email.model.EmailTemplateModel;
import com.kadioglumf.email.payload.response.EmailTemplatePlaceHolderResponse;
import com.kadioglumf.email.payload.response.EmailTemplateResponse;
import org.mapstruct.Mapper;
import org.springframework.data.domain.Page;

@Mapper(componentModel = "spring")
public interface EmailTemplateMapper {

    EmailTemplateResponse toEmailTemplateResponse(EmailTemplateModel model);
    default Page<EmailTemplateResponse> toEmailTemplateResponse(Page<EmailTemplateModel> models) {
        return models.map(this::toEmailTemplateResponse);
    }


    EmailTemplatePlaceHolderDto toEmailTemplatePlaceHolderDto(EmailTemplateCommonPlaceHoldersModel model);




    EmailTemplatePlaceHolderResponse toEmailTemplatePlaceHolderResponse(EmailTemplateCommonPlaceHoldersModel model);
    default Page<EmailTemplatePlaceHolderResponse> toEmailTemplatePlaceHolderResponse(Page<EmailTemplateCommonPlaceHoldersModel> models) {
        return models.map(this::toEmailTemplatePlaceHolderResponse);
    }
}
