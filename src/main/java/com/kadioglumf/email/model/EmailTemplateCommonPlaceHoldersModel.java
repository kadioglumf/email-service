package com.kadioglumf.email.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.annotations.Type;

import jakarta.persistence.*;

import java.sql.Types;

@Entity
@Table(name = "email_template_common_placeholder",
        uniqueConstraints = @UniqueConstraint(columnNames = {"code", "language"}),
        indexes = {
                @Index(name = "idx_common_placeholder_code_and_language", columnList = "code, language")
        })
@Data
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
@EqualsAndHashCode(callSuper = true)
public class EmailTemplateCommonPlaceHoldersModel extends DeviceDetailedAbstractModel {

    @Column(nullable = false, updatable = false)
    private String code;
    @Lob
    @JdbcTypeCode(Types.LONGVARCHAR)
    private String value;

    @Convert(converter = LanguageTypeConverter.class)
    @Column(nullable = false, updatable = false)
    private LanguageType language;
}
