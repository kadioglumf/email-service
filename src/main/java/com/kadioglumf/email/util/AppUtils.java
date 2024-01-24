package com.kadioglumf.email.util;

import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;

import java.util.Arrays;

@Slf4j
public class AppUtils {
    public static HttpHeaders getSecureHttpHeader(String bearer) {
        HttpHeaders requestHeaders = new HttpHeaders();
        requestHeaders.setContentType(MediaType.APPLICATION_JSON);
        requestHeaders.setAccept(Arrays.asList(MediaType.APPLICATION_JSON));
        requestHeaders.set("Authorization", "Bearer " + bearer);
        return requestHeaders;
    }
}
