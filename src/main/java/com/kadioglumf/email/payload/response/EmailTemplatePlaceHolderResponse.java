package com.kadioglumf.email.payload.response;

import com.kadioglumf.email.model.LanguageType;
import lombok.Data;

@Data
public class EmailTemplatePlaceHolderResponse {
    private String code;
    private String value;
    private LanguageType language;
}
