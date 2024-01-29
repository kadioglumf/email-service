package com.kadioglumf.email.common.annotations;

import io.swagger.annotations.ApiResponse;
import io.swagger.annotations.ApiResponses;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import static com.kadioglumf.email.common.SwaggerLocalization.*;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.METHOD)
@ApiResponses(
        value = {
                @ApiResponse(code = SWAGGER_API_RESPONSE_200, message = SWAGGER_API_RESPONSE_200_MESSAGE),
                @ApiResponse(code = SWAGGER_API_RESPONSE_400, message = SWAGGER_API_RESPONSE_400_MESSAGE),
                @ApiResponse(code = SWAGGER_API_RESPONSE_500, message = SWAGGER_API_RESPONSE_500_MESSAGE)
        }
)
public @interface CommonSwaggerApiResponses {
}
