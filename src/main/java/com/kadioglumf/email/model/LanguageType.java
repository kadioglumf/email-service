package com.kadioglumf.email.model;


import com.kadioglumf.email.exception.EmailServiceException;
import com.kadioglumf.email.payload.response.error.ErrorType;
import com.fasterxml.jackson.annotation.JsonProperty;

import java.util.Arrays;

public enum LanguageType {
    @JsonProperty("en") EN("en"),
    @JsonProperty("de") DE("de"),
    @JsonProperty("fr") FR("fr"),
    @JsonProperty("it") IT("it");

    private final String value;

    LanguageType(String value) {
        this.value = value;
    }

    public String getValue() {
        return this.value;
    }

    public static LanguageType toAttribute(String value) {
        return Arrays.stream(LanguageType.values())
                .filter(op -> op.getValue().equals(value))
                .findFirst()
                .orElseThrow(() -> new EmailServiceException(ErrorType.ENUM_NOT_FOUND, "Enum not found with value : " + value));
    }
}
