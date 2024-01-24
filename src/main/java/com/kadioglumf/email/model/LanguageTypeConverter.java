package com.kadioglumf.email.model;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter
public class LanguageTypeConverter implements AttributeConverter<LanguageType, String> {

    @Override
    public String convertToDatabaseColumn(LanguageType attribute) {
        return attribute.getValue();
    }

    @Override
    public LanguageType convertToEntityAttribute(String dbData) {
        return LanguageType.toAttribute(dbData);
    }
}
