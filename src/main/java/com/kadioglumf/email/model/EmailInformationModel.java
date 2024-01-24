package com.kadioglumf.email.model;

import lombok.Data;

import javax.persistence.Convert;
import javax.persistence.Entity;
import javax.persistence.Table;

@Data
@Entity
@Table(name = "email_information")
public class EmailInformationModel extends DeviceDetailedAbstractModel {

    @Convert(converter = EmailTemplateCodeConverter.class)
    private EmailTemplateCode code;
    private String email;
}
