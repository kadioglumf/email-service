package com.kadioglumf.email.util;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;

public class FormatUtils {

    public static String formatPrice(BigDecimal price) {
        DecimalFormatSymbols otherSymbols = new DecimalFormatSymbols();
        otherSymbols.setDecimalSeparator('.');
        otherSymbols.setGroupingSeparator('\'');

        DecimalFormat df = new DecimalFormat("#,###.00");
        df.setDecimalFormatSymbols(otherSymbols);
        return df.format(price);
    }
}
