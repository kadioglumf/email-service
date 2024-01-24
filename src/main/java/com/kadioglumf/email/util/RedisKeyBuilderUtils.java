package com.kadioglumf.email.util;

public class RedisKeyBuilderUtils {

    public static final String PREFIX_PLACE_HOLDER = "placeHolder";
    public static final String PREFIX_TEMPLATE = "template";

    public static String buildRedisKey(String... args) {
        StringBuilder key = new StringBuilder();
        for (String arg : args) {
            key.append(arg).append("-");
        }
        return key.deleteCharAt(key.length() - 1).toString();
    }
}
