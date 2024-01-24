package com.kadioglumf.email.aop.logging;

import com.kadioglumf.email.exception.EmailServiceException;
import com.kadioglumf.email.model.EmailLogModel;
import com.kadioglumf.email.payload.response.error.BaseErrorResponse;
import com.kadioglumf.email.repository.logging.EmailLogRepository;
import com.kadioglumf.email.util.AuthUtils;
import com.kadioglumf.email.util.ConvertUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.SerializationFeature;
import lombok.RequiredArgsConstructor;
import org.apache.commons.lang3.RandomStringUtils;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;

import java.util.Arrays;

@Aspect
@RequiredArgsConstructor
@Component
public class LoggingAspect {

    private static final Logger log = LoggerFactory.getLogger(LoggingAspect.class);

    private final EmailLogRepository emailLogRepository;
    private final ObjectMapper objectMapper;

    @AfterThrowing(pointcut = "execution(* com.kadioglumf.email.controller..*(..))", throwing = "e")
    public void logAfterThrowing(JoinPoint joinPoint, Throwable e) {
        EmailLogModel logModel = new EmailLogModel();
        log.error("Exception in {}.{}() with cause = \'{}\' and exception = \'{}\'", joinPoint.getSignature().getDeclaringTypeName(),
                joinPoint.getSignature().getName(), e.getCause() != null ? e.getCause() : "NULL", e.getMessage(), e);

        try {
            String[] args = getJsonData(joinPoint.getArgs());

            String email = AuthUtils.getUserEmail();
            logModel.setEmail(email == null ? String.valueOf(getFieldValueByName(args, "email")) : email);
            if (e instanceof EmailServiceException) {
                EmailServiceException ex = (EmailServiceException) e;
                BaseErrorResponse errorResponse = ex.getErrorResponse();
                logModel.setExceptionMessage(ConvertUtils.convertObjectToJsonData(errorResponse.getErrorMessage()));
                logModel.setErrorCode(errorResponse.getErrorCode());
                logModel.setErrorType(errorResponse.getErrorType());
                logModel.setHttpStatusCode(errorResponse.getHttpStatusCode());
                logModel.setTransactionId(errorResponse.getTransactionId());
            } else {
                logModel.setExceptionMessage(e.toString());
                logModel.setTransactionId(RandomStringUtils.randomNumeric(20));
            }
            logModel.setExceptionStackTrace(ConvertUtils.convertObjectToJsonData(e.getStackTrace()));
            logModel.setClassName(joinPoint.getSignature().getDeclaringTypeName());
            logModel.setMethodName(joinPoint.getSignature().getName());
            logModel.setRequest(Arrays.toString(args));

            emailLogRepository.save(logModel);
        } catch (Exception ex) {
            log.error("logAfterThrowing method error: ", ex);
        }
    }

    private Object getFieldValueByName(String[] args, String fieldName) {
        if (args != null) {
            for (String arg : args) {
                try {
                    JSONObject obj = new JSONObject(arg);
                    if (obj.has(fieldName)) {
                        return obj.getString(fieldName);
                    }
                } catch (Exception ex) {
                    log.error("not found fieldName: " + fieldName);
                }
            }
        }
        return null;
    }

    private String[] getJsonData(Object[] objects) {
        String[] args = new String[objects.length];
        try {
            for (int i = 0 ; i< objects.length ; i++) {
                objectMapper.configure(SerializationFeature.FAIL_ON_EMPTY_BEANS, false);
                args[i] = objectMapper.writeValueAsString(objects[i]);
            }
        } catch (Exception ex) {
            log.error("LoggingAspect parse exception: ", ex);
        }
        return args;
    }
}
