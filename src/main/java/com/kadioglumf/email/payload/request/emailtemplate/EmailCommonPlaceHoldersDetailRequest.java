package com.kadioglumf.email.payload.request.emailtemplate;

import lombok.Data;

import jakarta.validation.constraints.NotBlank;

@Data
public class EmailCommonPlaceHoldersDetailRequest {

    @NotBlank
    private String code;
    @NotBlank
    private String value;
}
