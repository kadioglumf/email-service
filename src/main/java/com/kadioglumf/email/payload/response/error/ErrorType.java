package com.kadioglumf.email.payload.response.error;

public enum ErrorType {

    //microservice error types
    AUTH_SERVICE_ERROR(1001, "Unknown auth service exception", 500),
    DATA_SERVICE_ERROR(4001, "Undefined data service exception",500),
    STORAGE_SERVICE_ERROR(10001, "Unknown storage service exception", 500),



    UNKNOWN_EMAIL_SERVICE_ERROR(7001, "Unknown email service exception", 500),
    FILTER_PARAMETER_BLACKLIST_ERROR(7002, "Blacklist filter parameter", 400),
    FILTER_PARAMETER_CANNOT_NULL_ERROR(7003, "Filter parameter cannot be null.", 400),
    FILTER_TYPE_NOT_SUITABLE_ERROR(7004, "Cannot search with this filter type and field type.", 400),
    SEARCH_UNKNOWN_ERROR(7005, "Unknow search error", 500),
    DATE_FORMAT_NOT_FOUND_ERROR(7006, "Date format not found.", 400),
    LOCAL_DATE_PARSE_ERROR(7007, "LocalDate parse exception.", 400),
    NUMBER_PARSE_ERROR(7008, "Number parse error", 500),
    PAGEABLE_CRITERIA_ERROR(7009, "Page size cannot grater than 100!", 500),
    REQUEST_OBJECT_NOT_VALID_ERROR(7010, "Request object not valid.", 400),
    FORBIDDEN_ERROR(7011, "You cannot reach this resource!", 403),
    ENUM_NOT_FOUND(7012, "Enum not found", 400),
    REDIS_CONNECTION_ERROR(7013,"Failed to connect to redis!", 400),
    EMAIL_TEMPLATE_NOT_FOUND_ERROR(7014,"Email template not found!", 400),
    EMAIL_TEMPLATE_PLACE_HOLDER_NOT_FOUND_ERROR(7015, "Email template place holder not found", 400),
    INTERNET_ADDRESS_COULD_NOT_VALIDATE_ERROR(7016, "Internet addresses could not be validated", 400),
    EMAIL_REPEATED_ERROR(7017, "Only one e-mail can be sent to the same e-mail address in one minute.", 400),



    //External service error types
    APP_CACHE_ERROR(70001, "Error occurred while caching app", 500)
    ;


    private final int code;
    private final String description;
    private final int httpStatusCode;

    ErrorType(int code, String description, int httpStatusCode) {
        this.code = code;
        this.description = description;
        this.httpStatusCode = httpStatusCode;
    }

    public String getDescription() {
        return description;
    }

    public int getCode() {
        return code;
    }

    public int getHttpStatusCode() {
        return httpStatusCode;
    }

    @Override
    public String toString() {
        return code + ": " + description;
    }

}
