package com.kadioglumf.email.service.search;

import com.kadioglumf.email.exception.EmailServiceException;
import com.kadioglumf.email.payload.response.error.ErrorType;
import com.kadioglumf.email.util.DateUtils;
import org.apache.commons.lang3.math.NumberUtils;

public enum FieldType {

    BOOLEAN {
        public Object parse(String value) {
            return Boolean.valueOf(value);
        }
    },

    CHAR {
        public Object parse(String value) {
            return value.charAt(0);
        }
    },

    DATE {
        public Object parse(String value) {
            return DateUtils.parseStringToObjectByFormat(value);
        }
    },

    NUMBER {
        public Object parse(String value) {
            try {
                return NumberUtils.createNumber(value);
            } catch (NumberFormatException ex) {
                throw new EmailServiceException(ErrorType.NUMBER_PARSE_ERROR, ex.getMessage());
            }
        }
    },

    STRING {
        public Object parse(String value) {
            return value;
        }
    };

    public abstract Object parse(String value);

}
