package com.kadioglumf.email.payload.request.emailtemplate;

import lombok.Data;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

@Data
public class EmailTemplateDetailRequest {

    @NotNull
    private String code;

    @NotBlank
    private String content;

    @NotBlank
    private String subject;
}
