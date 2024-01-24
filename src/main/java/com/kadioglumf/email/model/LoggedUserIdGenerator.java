package com.kadioglumf.email.model;

import com.kadioglumf.email.util.AuthUtils;
import org.hibernate.Session;
import org.hibernate.tuple.ValueGenerator;

public class LoggedUserIdGenerator implements ValueGenerator<Long> {
    @Override
    public Long generateValue(Session session, Object o) {
        return AuthUtils.getUserId();
    }
}
