package com.kadioglumf.email.service.search;

import com.kadioglumf.email.exception.EmailServiceException;
import com.kadioglumf.email.payload.response.error.ErrorType;
import org.springframework.util.CollectionUtils;

import javax.persistence.criteria.Expression;
import javax.persistence.criteria.Root;
import java.util.HashMap;
import java.util.List;

public enum SearchExpressionType {

    GET_ALL_TEMPLATES {

        private final HashMap<SearchRoleType, List<String>> GET_ALL_TEMPLATES_WHITE_LIST_PARAMETERS = new HashMap<>() {{
            put(SearchRoleType.ADMIN, ExpressionKeyConstants.getAllTemplateAdminKeys());
        }};

        @Override
        public <T> Expression<?> getExpression(Root<T> root, String key, SearchRoleType searchRoleType) {
            checkSearchKey(key, GET_ALL_TEMPLATES_WHITE_LIST_PARAMETERS.get(searchRoleType));

            switch (key) {
                case ExpressionKeyConstants.ID:
                case ExpressionKeyConstants.CREATION_DATE:
                case ExpressionKeyConstants.LAST_UPDATE_DATE:
                case ExpressionKeyConstants.SUBJECT:
                case ExpressionKeyConstants.CODE:
                case ExpressionKeyConstants.LANGUAGE:
                    return root.get(key);
                default:
                    throw new EmailServiceException(ErrorType.FILTER_PARAMETER_BLACKLIST_ERROR);
            }
        }
    },


    GET_ALL_PLACE_HOLDERS {

        private final HashMap<SearchRoleType, List<String>> GET_ALL_PLACE_HOLDERS_WHITE_LIST_PARAMETERS = new HashMap<>() {{
            put(SearchRoleType.ADMIN, ExpressionKeyConstants.getAllPlaceHolderAdminKeys());
        }};

        @Override
        public <T> Expression<?> getExpression(Root<T> root, String key, SearchRoleType searchRoleType) {
            checkSearchKey(key, GET_ALL_PLACE_HOLDERS_WHITE_LIST_PARAMETERS.get(searchRoleType));

            switch (key) {
                case ExpressionKeyConstants.ID:
                case ExpressionKeyConstants.CREATION_DATE:
                case ExpressionKeyConstants.LAST_UPDATE_DATE:
                case ExpressionKeyConstants.VALUE:
                case ExpressionKeyConstants.CODE:
                case ExpressionKeyConstants.LANGUAGE:
                    return root.get(key);
                default:
                    throw new EmailServiceException(ErrorType.FILTER_PARAMETER_BLACKLIST_ERROR);
            }
        }
    };



    public abstract <T> Expression<?> getExpression(Root<T> root, String key, SearchRoleType searchRoleType);


    public void checkSearchKey(String key, List<String> whiteListKeys) {
        if (CollectionUtils.isEmpty(whiteListKeys)) {
            throw new EmailServiceException(ErrorType.FORBIDDEN_ERROR);
        }
        if (!whiteListKeys.contains(key)) {
            throw new EmailServiceException(ErrorType.FILTER_PARAMETER_BLACKLIST_ERROR);
        }
    }
}
