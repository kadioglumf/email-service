package com.kadioglumf.email.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GenerationTime;
import org.hibernate.annotations.GeneratorType;
import org.hibernate.annotations.UpdateTimestamp;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@MappedSuperclass
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public abstract class AbstractModel implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @DateTimeFormat
    @CreationTimestamp
    @Column(nullable = false, updatable = false)
    private Date creationDate;

    @DateTimeFormat
    @UpdateTimestamp
    private Date lastUpdateDate;

    @Column(name = "createBy", updatable = false)
    @GeneratorType(
            type = LoggedUserIdGenerator.class,
            when = GenerationTime.INSERT
    )
    private Long createBy;

    @Column(name = "updateBy")
    @GeneratorType(
            type = LoggedUserIdGenerator.class,
            when = GenerationTime.ALWAYS
    )
    private Long updateBy;
}
