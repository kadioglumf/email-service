package com.kadioglumf.email.payload.request.emailtemplate;

import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

@Data
public class EmailTemplateDetailRequest {

    @NotNull
    private String code;

    @NotBlank
    private String content;

    @NotBlank
    private String subject;
}
