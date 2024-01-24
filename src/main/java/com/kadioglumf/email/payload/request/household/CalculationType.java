package com.kadioglumf.email.payload.request.household;

import lombok.Getter;
import org.apache.commons.lang3.StringUtils;

import java.util.Locale;

@Getter
public enum CalculationType {
    HOUSEHOLD_AND_PH("household_and_ph"),
    HOUSEHOLD("household"),
    PH("ph");

    private final String value;

    CalculationType(String value) {
        this.value = value;
    }

    public static CalculationType getByValue(String value) {
        if (StringUtils.isBlank(value)) {
            throw new IllegalArgumentException("CalculationType cannot be blank.");
        }
        for (CalculationType type : CalculationType.values()){
            if (type.value.equals(value.toLowerCase(Locale.ENGLISH))) {
                return type;
            }
        }
        throw new IllegalArgumentException("Not found CalculationType with: " + value);
    }
}
