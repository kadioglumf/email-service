package com.kadioglumf.email.payload.request.emailtemplate;

import com.kadioglumf.email.model.LanguageType;
import lombok.Data;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.Map;

@Data
public class EmailCommonPlaceHoldersRequest {
    @NotNull
    @Valid
    private Map<LanguageType, EmailCommonPlaceHoldersDetailRequest> details;
}