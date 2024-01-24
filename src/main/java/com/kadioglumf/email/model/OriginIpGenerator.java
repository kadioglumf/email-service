package com.kadioglumf.email.model;

import com.kadioglumf.email.util.UserDeviceDetailsUtils;
import org.hibernate.Session;
import org.hibernate.tuple.ValueGenerator;

public class OriginIpGenerator implements ValueGenerator<String> {
    @Override
    public String generateValue(Session session, Object o) {
        return UserDeviceDetailsUtils.getIpAddr(EIpType.ORIGIN);
    }
}

