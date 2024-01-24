package com.kadioglumf.email.dto;

import com.kadioglumf.email.model.LanguageType;
import lombok.Data;

@Data
public class EmailTemplatePlaceHolderDto {
    private String code;
    private String value;
    private LanguageType language;
}
