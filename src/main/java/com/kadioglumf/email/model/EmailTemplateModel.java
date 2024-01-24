package com.kadioglumf.email.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.annotations.Type;

import javax.persistence.*;

@Entity
@Table(name = "email_template",
        uniqueConstraints = @UniqueConstraint(columnNames = {"code", "language"}),
        indexes = {
                @Index(name = "idx_code_and_language", columnList = "code, language")
        })
@Data
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@EqualsAndHashCode(callSuper = true)
public class EmailTemplateModel extends DeviceDetailedAbstractModel {

    @Column(nullable = false, updatable = false)
    private String code;

    @Column(nullable = false)
    @Lob
    @Type(type = "org.hibernate.type.TextType")
    private String content;

    private String subject;

    @Column(nullable = false, updatable = false)
    @Convert(converter = LanguageTypeConverter.class)
    private LanguageType language;
}
