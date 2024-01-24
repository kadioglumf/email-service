package com.kadioglumf.email.util;

import org.springframework.context.i18n.LocaleContextHolder;

import java.util.Locale;

public class LocaleHolder {

    public static Locale getLocale() {
        try {
            String lang = LocaleContextHolder.getLocale().getLanguage();
            if (Locale.ENGLISH.getLanguage().equals(lang)) {
                return Locale.ENGLISH;
            } else if (Locale.FRENCH.getLanguage().equals(lang)) {
                return Locale.FRENCH;
            } else if (Locale.GERMAN.getLanguage().equals(lang)) {
                return Locale.GERMAN;
            } else if (Locale.ITALIAN.getLanguage().equals(lang)) {
                return Locale.ITALIAN;
            }

        } catch (Exception ignored) {

        }
        return Locale.GERMAN;
    }
}
