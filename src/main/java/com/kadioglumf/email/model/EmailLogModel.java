package com.kadioglumf.email.model;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.Type;

import javax.persistence.*;

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
    @Type(type = "org.hibernate.type.TextType")
    private String request;

    @Lob
    @Type(type = "org.hibernate.type.TextType")
    private String exceptionMessage;

    @Lob
    @Type(type = "org.hibernate.type.TextType")
    private String exceptionStackTrace;
    private String className;
    private String methodName;

    private Integer errorCode;
    private String errorType;
    private Integer httpStatusCode;
    private String transactionId;
}
