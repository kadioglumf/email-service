package com.kadioglumf.email.dto;

import lombok.Data;

@Data
public class EmailTemplateDto {
    private String code;
    private String content;
    private String subject;

}
