package com.kadioglumf.email.service.template;

import com.kadioglumf.email.dto.EmailTemplateDto;
import com.kadioglumf.email.model.EmailTemplateCode;
import com.kadioglumf.email.payload.request.health.HealthCreateOfferRequest;
import com.kadioglumf.email.payload.request.health.HealthPersonRequest;
import com.kadioglumf.email.payload.request.health.HealthSelectedOfferResultRequest;
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
public class HealthCreateOfferTemplate extends BaseMailTemplate {


    private HealthCreateOfferRequest createOfferRequest;
    private List<Map<String, Object>> personList;


    public HealthCreateOfferTemplate(HealthCreateOfferRequest createOfferRequest, EmailTemplateService emailTemplateService) {
        super(emailTemplateService);
        this.createOfferRequest = createOfferRequest;
        init();
    }

    @Override
    protected void init() {
        EmailTemplateDto contentTemplate = emailTemplateService.findByCodeAndLanguage(EmailTemplateCode.TEST2_TEMPLATE.getValue(), language);
        commons(contentTemplate);
    }

    @Override
    protected Map<String, Object> getDynamicPlaceHolders() {
        Map<String, Object> contentVariables = new HashMap<>();

        contentVariables.put("personList", fillPersonList());
        contentVariables.put("cornerTitle", emailTemplateService.findCommonPlaceHolderByCodeAndLang("health_cornerTitle", language).getValue());

        return contentVariables;
    }

    private List<Map<String, Object>> fillPersonList() {
        List<Map<String, Object>> personList = new ArrayList<>();

        for (HealthPersonRequest personRequest : createOfferRequest.getHealthPersonMailRequests()) {

            Map<String, Object> personInfo = personInfo(personRequest.getName(), personRequest.getSurname(), personRequest.getBirthDate());

            List<Map<String, Object>> selectedOfferResult = new ArrayList<>();
            for (HealthSelectedOfferResultRequest resultRequest : personRequest.getSelectedOfferRequest().getSelectedOfferResultMailRequests()) {
                selectedOfferResult.add(resultInfo(resultRequest.getType(),
                        personRequest.getSelectedOfferRequest().getCompanyName(), resultRequest.getTarif(), FormatUtils.formatPrice(resultRequest.getPrice())));

            }
            personInfo.put("selectedOfferResult", selectedOfferResult);
            personList.add(personInfo);
        }
        return personList;
    }

    private HashMap<String, Object> personInfo(String name, String surname, String birthDate) {
        HashMap<String, Object> variables = new HashMap<>();

        variables.put("person_name", name);
        variables.put("person_surname", surname);
        variables.put("person_birthDate", birthDate);
        return variables;
    }

    private HashMap<String, Object> resultInfo(String offerType, String companyName, String offerTarif, String offerPrice) {
        HashMap<String, Object> variables = new HashMap<>();

        variables.put("offer_type", offerType);
        variables.put("person_selectedOfferRequest_companyName", companyName);
        variables.put("offer_tarif", offerTarif);
        variables.put("offer_price", offerPrice);
        return variables;
    }
}
