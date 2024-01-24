package com.kadioglumf.email.model;

import lombok.Data;

import jakarta.persistence.Convert;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;

@Data
@Entity
@Table(name = "email_information")
public class EmailInformationModel extends DeviceDetailedAbstractModel {

    @Convert(converter = EmailTemplateCodeConverter.class)
    private EmailTemplateCode code;
    private String email;
}
