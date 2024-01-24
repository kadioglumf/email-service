package com.kadioglumf.email.model;

import com.kadioglumf.email.util.AuthUtils;
import com.kadioglumf.email.util.UserDeviceDetailsUtils;
import jakarta.persistence.Column;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.MappedSuperclass;
import jakarta.persistence.PrePersist;
import jakarta.persistence.PreUpdate;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.GenerationTime;
import org.hibernate.annotations.GeneratorType;
import org.hibernate.annotations.GenericGenerator;
import org.springframework.data.annotation.LastModifiedBy;

@MappedSuperclass
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class DeviceDetailedAbstractModel extends AbstractModel {

    @Column(updatable = false)
    private String createdByIpAddr;

    @LastModifiedBy
    private String updatedByIpAddr;

    @Column(updatable = false)
    private String originIpAddr;

    private String origin;
    private String userAgent;

    @PrePersist
    private void prePersist() {
        this.createdByIpAddr = UserDeviceDetailsUtils.getIpAddr(EIpType.CLIENT);
        this.updatedByIpAddr = UserDeviceDetailsUtils.getIpAddr(EIpType.CLIENT);
        this.originIpAddr = UserDeviceDetailsUtils.getIpAddr(EIpType.ORIGIN);
        this.origin = UserDeviceDetailsUtils.getOrigin();
        this.userAgent = UserDeviceDetailsUtils.getUserAgent();
        setCreateBy(AuthUtils.getUserId());
        setUpdateBy(AuthUtils.getUserId());
    }

    @PreUpdate
    private void preUpdate() {
        this.updatedByIpAddr = UserDeviceDetailsUtils.getIpAddr(EIpType.CLIENT);
        this.origin = UserDeviceDetailsUtils.getOrigin();
        this.userAgent = UserDeviceDetailsUtils.getUserAgent();
        setUpdateBy(AuthUtils.getUserId());
    }
}

