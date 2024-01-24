package com.kadioglumf.email.model;

import javax.persistence.AttributeConverter;
import javax.persistence.Converter;

@Converter
public class EmailTemplateCodeConverter implements AttributeConverter<EmailTemplateCode, String> {

    @Override
    public String convertToDatabaseColumn(EmailTemplateCode attribute) {
        return attribute.getValue();
    }

    @Override
    public EmailTemplateCode convertToEntityAttribute(String dbData) {
        return EmailTemplateCode.toAttribute(dbData);
    }
}