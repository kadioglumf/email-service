package com.kadioglumf.email.mail;

import com.kadioglumf.email.payload.request.health.HealthCreateOfferRequest;
import com.kadioglumf.email.payload.request.health.HealthPersonRequest;
import com.kadioglumf.email.payload.request.health.HealthSelectedOfferRequest;
import com.kadioglumf.email.payload.request.health.HealthSelectedOfferResultRequest;
import com.kadioglumf.email.service.email.EmailService;
import org.junit.AfterClass;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

import static org.junit.Assert.fail;

@SpringBootTest
public class HealthCreateOfferTemplateTest {
    static Locale defaultLocale = Locale.getDefault();

    @Autowired
    private EmailService emailService;

    private HealthCreateOfferRequest request;

    @BeforeEach
    void init() {
        request = new HealthCreateOfferRequest();
        request.setEmail("mfatihkadioglu1@gmail.com");
        request.setOfferId("HI5654654");
        request.setHealthPersonMailRequests(Arrays.asList(createPerson(), createPerson()));
        request.setTotalOfferPrice(BigDecimal.valueOf(8050.34));
    }

    HealthPersonRequest createPerson() {
        HealthPersonRequest personRequest = new HealthPersonRequest();

        HealthSelectedOfferResultRequest resultRequest = new HealthSelectedOfferResultRequest();
        resultRequest.setPrice(BigDecimal.valueOf(134));
        resultRequest.setTarif("Grundversicherung mit freier Arztwahl");
        resultRequest.setTarifCode("BASE");
        resultRequest.setType("KVG");

        HealthSelectedOfferResultRequest resultRequest2 = new HealthSelectedOfferResultRequest();
        resultRequest2.setPrice(BigDecimal.valueOf(2500.76));
        resultRequest2.setTarif("Premium ohne Natura");
        resultRequest2.setTarifCode("premiumwithoutnatura_sympany");
        resultRequest2.setType("VVG");

        HealthSelectedOfferResultRequest resultRequest3 = new HealthSelectedOfferResultRequest();
        resultRequest3.setPrice(BigDecimal.valueOf(50.45));
        resultRequest3.setTarif("Spital Flex Variante 1");
        resultRequest3.setTarifCode("hospitaflex2_sympany");
        resultRequest3.setType("VVG");

        List<HealthSelectedOfferResultRequest> resultRequests = Arrays.asList(resultRequest, resultRequest2, resultRequest3);

        HealthSelectedOfferRequest selectedOfferRequest = new HealthSelectedOfferRequest();
        selectedOfferRequest.setSelectedOfferResultMailRequests(resultRequests);
        selectedOfferRequest.setCompanyName("Test comapny");

        personRequest.setBirthDate("11.11.1993");
        personRequest.setName("fatih");
        personRequest.setSurname("Kas");
        personRequest.setSelectedOfferRequest(selectedOfferRequest);

        return personRequest;
    }

    @AfterClass
    public static void restoreLocale() {
        Locale.setDefault(defaultLocale);
    }

    @Test
    void sendMailHealthCreateOfferWithDefaultLanguage() {
        restoreLocale();
        try {
            emailService.sendHealthCreateOfferEmail(request);
        } catch (Exception e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
    }

    @Test
    void sendMailHealthCreateOfferWithLanguageDE() {
        Locale.setDefault(Locale.GERMAN);
        try {
            emailService.sendHealthCreateOfferEmail(request);
        } catch (Exception e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
    }

    @Test
    void sendMailHealthCreateOfferWithLanguageEN() {
        Locale.setDefault(Locale.ENGLISH);
        try {
            emailService.sendHealthCreateOfferEmail(request);
        } catch (Exception e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
    }

    @Test
    void sendMailHealthCreateOfferWithLanguageIT() {
        Locale.setDefault(Locale.ITALIAN);
        try {
            emailService.sendHealthCreateOfferEmail(request);
        } catch (Exception e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
    }

    @Test
    void sendHealthCreateOfferWithLanguageFR() {
        Locale.setDefault(Locale.FRANCE);
        try {
            emailService.sendHealthCreateOfferEmail(request);
        } catch (Exception e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
    }
}
