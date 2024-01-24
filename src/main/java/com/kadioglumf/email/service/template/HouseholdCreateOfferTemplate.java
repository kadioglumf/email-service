package com.kadioglumf.email.service.template;

import com.kadioglumf.email.dto.EmailTemplateDto;
import com.kadioglumf.email.model.EmailTemplateCode;
import com.kadioglumf.email.payload.request.household.CalculationType;
import com.kadioglumf.email.payload.request.household.HouseholdBody;
import com.kadioglumf.email.payload.request.household.HouseholdCreateOfferRequest;
import com.kadioglumf.email.payload.request.household.PhBody;
import com.kadioglumf.email.service.email.EmailTemplateService;
import com.kadioglumf.email.util.FormatUtils;
import lombok.Getter;
import lombok.Setter;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Getter
@Setter
public class HouseholdCreateOfferTemplate extends BaseMailTemplate {

    private HouseholdCreateOfferRequest createOfferRequest;
    private List<HashMap<String, Object>> householdValues = new ArrayList<>();
    private List<HashMap<String, Object>> phValues = new ArrayList<>();

    public HouseholdCreateOfferTemplate(HouseholdCreateOfferRequest createOfferRequest, EmailTemplateService emailTemplateService) {
        super(emailTemplateService);
        this.createOfferRequest = createOfferRequest;
        init();
    }

    @Override
    protected void init() {
        EmailTemplateDto contentTemplate = emailTemplateService.findByCodeAndLanguage(EmailTemplateCode.TEST1_TEMPLATE.getValue(), language);
        commons(contentTemplate);
    }

    private HashMap<String, Object> household(String key, Object value) {
        HashMap<String, Object> variables = new HashMap<>();

        variables.put("household_key", key);
        variables.put("household_value", value);
        return variables;
    }

    private HashMap<String, Object> ph(String key, Object value) {
        HashMap<String, Object> variables = new HashMap<>();

        variables.put("ph_key", key);
        variables.put("ph_value", value);
        return variables;
    }

    @Override
    protected Map<String, Object> getDynamicPlaceHolders() {
        Map<String, Object> contentVariables = new HashMap<>();
        contentVariables.put("cornerTitle", emailTemplateService.findCommonPlaceHolderByCodeAndLang("household_cornerTitle", language).getValue());


        if (CalculationType.HOUSEHOLD.getValue().equals(createOfferRequest.getCalculationType())) {
            fillHouseholdValues(createOfferRequest.getHouseholdBody());
            contentVariables.put("householdValues", householdValues);
            contentVariables.put("isShowHousehold", true);
            contentVariables.put("isShowPh", false);
        }
        else if (CalculationType.PH.getValue().equals(createOfferRequest.getCalculationType())) {
            fillPhValues(createOfferRequest.getPhBody());
            contentVariables.put("phValues", phValues);
            contentVariables.put("isShowPh", true);
            contentVariables.put("isShowHousehold", false);
        }
        else if (CalculationType.HOUSEHOLD_AND_PH.getValue().equals(createOfferRequest.getCalculationType())) {
            fillHouseholdValues(createOfferRequest.getHouseholdBody());
            fillPhValues(createOfferRequest.getPhBody());
            contentVariables.put("householdValues", householdValues);
            contentVariables.put("phValues", phValues);
            contentVariables.put("isShowPh", true);
            contentVariables.put("isShowHousehold", true);
        }

        return contentVariables;
    }

    private void fillHouseholdValues(HouseholdBody householdBody) {

        List<String> placeHolders = List.of("yes", "no", "household_grossNegligenceProtection");

        Map<String, String> variables = emailTemplateService.findCommonPlaceHoldersByCodeListAndLang(placeHolders, language);

        householdValues.add(household(variables.get("household_grossNegligenceProtection"), variables.get("yes")));
    }

    private void fillPhValues(PhBody phBody) {
        String currency = " CHF";
        String yesNo = phBody.isFahrzeugeIncluded() ? "yes" : "no";

        List<String> placeHolders = List.of("yes", "no", "household_fahrzeugeIncluded");

        Map<String, String> variables = emailTemplateService.findCommonPlaceHoldersByCodeListAndLang(placeHolders, language);

        phValues.add(ph(variables.get("household_fahrzeugeIncluded"), variables.get(yesNo)));
    }
}
