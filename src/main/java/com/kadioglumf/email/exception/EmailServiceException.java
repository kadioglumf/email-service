package com.kadioglumf.email.exception;

import com.kadioglumf.email.payload.response.error.BaseErrorResponse;
import com.kadioglumf.email.payload.response.error.ErrorType;

public class EmailServiceException extends RuntimeException {
    private final BaseErrorResponse errorResponse;

    public EmailServiceException(BaseErrorResponse errorResponse) {
        this.errorResponse = errorResponse;
    }

    public EmailServiceException(ErrorType errorType) {
        this.errorResponse = new BaseErrorResponse(errorType);
    }

    public EmailServiceException(int statusCode, ErrorType errorType) {
        this.errorResponse = new BaseErrorResponse(statusCode, errorType);
    }

    public EmailServiceException(int statusCode, ErrorType errorType, String errorMessage) {
        this.errorResponse = new BaseErrorResponse(statusCode, errorType, errorMessage);
    }

    public EmailServiceException(ErrorType errorType, String errorMessage) {
        this.errorResponse = new BaseErrorResponse(errorType, errorMessage);
    }

    public BaseErrorResponse getErrorResponse() {
        return errorResponse;
    }
}