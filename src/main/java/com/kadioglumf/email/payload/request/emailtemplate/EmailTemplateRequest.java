package com.kadioglumf.email.payload.request.emailtemplate;

import com.kadioglumf.email.model.LanguageType;
import lombok.Getter;
import lombok.Setter;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.Map;

@Getter
@Setter
public class EmailTemplateRequest {
    @NotNull
    @Valid
    private Map<LanguageType, EmailTemplateDetailRequest> details;
}
