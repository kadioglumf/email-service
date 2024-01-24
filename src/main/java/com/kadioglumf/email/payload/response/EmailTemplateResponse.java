package com.kadioglumf.email.payload.response;

import com.kadioglumf.email.model.LanguageType;
import lombok.Data;

@Data
public class EmailTemplateResponse {
    private String code;
    private String content;
    private String subject;
    private LanguageType language;
}
