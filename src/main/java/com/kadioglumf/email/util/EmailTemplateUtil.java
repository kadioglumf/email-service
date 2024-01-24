package com.kadioglumf.email.util;

import com.kadioglumf.email.service.template.Context;
import lombok.experimental.UtilityClass;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@UtilityClass
public class EmailTemplateUtil {

    private static final String regexCondition = "\\$\\(([^\\)]+)\\)"; // Koşul ifadesi: $(...)
    private static final String regexList = "\\$\\[([^\\]]+)\\]"; // Liste ifadesi: $[...]
    private static final String regexNormalValue = "\\$\\{([^\\}]+)\\}"; // Normal değer ifadesi: ${...}

    private static final Pattern patternNormalValue = Pattern.compile(regexNormalValue);
    private static final Pattern allValues = Pattern.compile(regexNormalValue + "|" + regexList + "|" + regexCondition);



    public static synchronized String concatTemplateParts(String header,
                                                      String content,
                                                      String footer) {
        content = replacePlaceHolderVariable(content, "header", header);
        content = replacePlaceHolderVariable(content, "footer", footer);
        return content;
    }

    public static synchronized String prepareTemplate(Context content) {
        return resolveTemplate(content.getTemplate(), content.getVariables());
    }

    private static String resolveTemplate(String template, Map<String, Object> templateParameters) {
        List<String> placeHolders = allPlaceHolders(template);
        if (CollectionUtils.isEmpty(placeHolders))
        {
            return template;
        }
        for (var parameter : templateParameters.entrySet()) {
            String parameterKey = parameter.getKey();
            Object parameterValue = parameter.getValue();

            if (parameterValue instanceof Boolean
                    && placeHolders.contains(parameterKey)) {

                String beginPlaceHolder = "$(" + parameterKey + ")";
                String endPlaceHolder = "$(/" + parameterKey + ")";

                int conditionValueBeginIndex = template.indexOf(beginPlaceHolder);
                int conditionValueEndIndex = template.indexOf(endPlaceHolder);

                if (conditionValueBeginIndex == -1 || conditionValueEndIndex == -1) {
                    continue;
                }
                if ((Boolean) parameterValue) {
                    template = template.replace(beginPlaceHolder, "")
                            .replace(endPlaceHolder, "");
                }
                else
                {
                    template = template.substring(0, conditionValueBeginIndex) + template.substring(conditionValueEndIndex + endPlaceHolder.length());
                }
            }
            else if (parameterValue instanceof List) {
                String newContentPart = "";
                String placeHolder = "$[" + parameterKey + "]";
                String endPlaceHolder = "$[/" + parameterKey + "]";

                int listValueBeginIndex = template.indexOf(placeHolder);
                int listValueEndIndex = template.indexOf(endPlaceHolder);

                if (listValueBeginIndex == -1 || listValueEndIndex == -1) {
                    continue;
                }

                String listContent = template.substring(listValueBeginIndex + placeHolder.length(), listValueEndIndex);
                for (Object e : (List) parameterValue) {
                    newContentPart = newContentPart.concat(resolveTemplate(listContent, (Map<String, Object>) e));
                }

                template = template.substring(0, listValueBeginIndex) + newContentPart + template.substring(listValueEndIndex + endPlaceHolder.length());
            }
            else {
                template = template.replace("${" + parameterKey + "}", parameterValue == null ? "" : parameterValue.toString());
            }
        }
        return template;
    }

    public static List<String> allPlaceHolders(String template) {
        List<String> placeHolders = new ArrayList<>();

        Matcher matcherAllValues = allValues.matcher(template);

        while (matcherAllValues.find()) {
            placeHolders.add(matcherAllValues.group(1));
        }

        return placeHolders;
    }

    public static List<String> valuePlaceHolders(String template) {
        List<String> placeHolders = new ArrayList<>();

        Matcher matcherNormalValue = patternNormalValue.matcher(template);

        while (matcherNormalValue.find()) {
            placeHolders.add(matcherNormalValue.group(1));
        }
        return placeHolders;
    }

    private String replacePlaceHolderVariable(String template, String placeHolder, Object value) {
        return template.replace("${" + placeHolder + "}", value.toString());
    }
}
