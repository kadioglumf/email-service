package com.kadioglumf.email.model;

import com.kadioglumf.email.exception.EmailServiceException;
import com.kadioglumf.email.payload.response.error.ErrorType;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Arrays;

public enum EmailTemplateCode {
    @JsonProperty("header") HEADER("header"),
    @JsonProperty("footer") FOOTER("footer"),
    @JsonProperty("test1_template") TEST1_TEMPLATE("test1_template"),
    @JsonProperty("test2_template") TEST2_TEMPLATE("test2_template"),

    ;


    private final String value;

    EmailTemplateCode(String value) {
        this.value = value;
    }

    public String getValue() {
        return this.value;
    }

    public static EmailTemplateCode toAttribute(String value) {
        return Arrays.stream(EmailTemplateCode.values())
                .filter(op -> op.getValue().equals(value))
                .findFirst()
                .orElseThrow(() -> new EmailServiceException(ErrorType.ENUM_NOT_FOUND, "Enum not found with value : " + value));
    }
}
