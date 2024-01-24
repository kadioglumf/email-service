package com.kadioglumf.email.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import jakarta.persistence.Column;
import jakarta.persistence.Convert;
import jakarta.persistence.Entity;
import jakarta.persistence.Index;
import jakarta.persistence.Lob;
import jakarta.persistence.Table;
import jakarta.persistence.UniqueConstraint;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.annotations.Type;

import java.sql.Types;

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
    @JdbcTypeCode(Types.LONGVARCHAR)
    private String content;

    private String subject;

    @Column(nullable = false, updatable = false)
    @Convert(converter = LanguageTypeConverter.class)
    private LanguageType language;
}
