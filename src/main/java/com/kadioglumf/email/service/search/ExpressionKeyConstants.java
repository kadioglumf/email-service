package com.kadioglumf.email.service.search;

import java.util.Arrays;
import java.util.List;

public class ExpressionKeyConstants {

    public static final String ID = "id";
    public static final String CREATION_DATE = "creationDate";
    public static final String LAST_UPDATE_DATE = "lastUpdateDate";
    public static final String CODE = "code";
    public static final String SUBJECT = "subject";
    public static final String VALUE = "value";
    public static final String LANGUAGE = "language";


    public static List<String> getAllTemplateAdminKeys() {
        return Arrays.asList(ID, CREATION_DATE, LAST_UPDATE_DATE, CODE, SUBJECT, LANGUAGE);
    }

    public static List<String> getAllPlaceHolderAdminKeys() {
        return Arrays.asList(ID, CREATION_DATE, LAST_UPDATE_DATE, CODE, VALUE, LANGUAGE);
    }
}
