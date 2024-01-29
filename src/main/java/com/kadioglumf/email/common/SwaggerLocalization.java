package com.kadioglumf.email.common;

import lombok.AccessLevel;
import lombok.NoArgsConstructor;

@NoArgsConstructor(access = AccessLevel.PRIVATE)
public class SwaggerLocalization {

    public static final String SWAGGER_JSON_XML = "application/xml,application/json";


    public static final int SWAGGER_API_RESPONSE_200 = 200;
    public static final int SWAGGER_API_RESPONSE_400 = 400;
    public static final int SWAGGER_API_RESPONSE_500 = 500;

    public static final String SWAGGER_API_RESPONSE_200_MESSAGE = "Operation successful";
    public static final String SWAGGER_API_RESPONSE_400_MESSAGE = "Bad Request";
    public static final String SWAGGER_API_RESPONSE_500_MESSAGE = "Unexpected Error";




    public static final String NICKNAME_TEMPLATE_CREATE_OR_UPDATE = "template-create-or-update";
    public static final String VALUE_TEMPLATE_CREATE_OR_UPDATE = "{VALUE_TEMPLATE_CREATE_OR_UPDATE}";
    public static final String NOTES_TEMPLATE_CREATE_OR_UPDATE = "{NOTES_TEMPLATE_CREATE_OR_UPDATE}";
}
