package com.kadioglumf.email.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.JdbcTypeCode;
import org.hibernate.annotations.Type;

import jakarta.persistence.*;

import java.sql.Types;

@Data
@NoArgsConstructor
@Entity
@Table(name = "email_exception_logs")
public class EmailLogModel extends DeviceDetailedAbstractModel {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    
    private String email;
    @Lob
    @JdbcTypeCode(Types.LONGVARCHAR)
    private String request;

    @Lob
    @JdbcTypeCode(Types.LONGVARCHAR)
    private String exceptionMessage;

    @Lob
    @JdbcTypeCode(Types.LONGVARCHAR)
    private String exceptionStackTrace;
    private String className;
    private String methodName;

    private Integer errorCode;
    private String errorType;
    private Integer httpStatusCode;
    private String transactionId;
}
