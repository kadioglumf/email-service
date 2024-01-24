package com.kadioglumf.email.util;

import com.kadioglumf.email.security.UserContext;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;

@Slf4j
public class AuthUtils {

    public static String getUserEmail() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        try {
            if (authentication == null || authentication.getPrincipal() == null) {
                return null;
            }
            UserContext userContext = (UserContext) authentication.getPrincipal();
            return userContext == null ? null : userContext.getUser().getEmail();
        } catch (ClassCastException c) {
            log.error("ClassCastException Auth not found");
        }
        return null;
    }

    public static Long getUserId() {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        try {
            if (authentication == null || authentication.getPrincipal() == null) {
                return null;
            }
            UserContext userContext = (UserContext) authentication.getPrincipal();
            return userContext == null ? null : userContext.getUser().getId();
        } catch (ClassCastException c) {
            log.error("ClassCastException Auth not found");
        }
        return null;
    }
}