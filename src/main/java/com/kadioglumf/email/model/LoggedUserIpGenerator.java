package com.kadioglumf.email.model;

import com.kadioglumf.email.util.UserDeviceDetailsUtils;
import org.hibernate.Session;
import org.hibernate.tuple.ValueGenerator;

public class LoggedUserIpGenerator implements ValueGenerator<String> {
    @Override
    public String generateValue(Session session, Object o) {
        return UserDeviceDetailsUtils.getIpAddr(EIpType.CLIENT);
    }
}
