package com.kadioglumf.email.mail;

import com.kadioglumf.email.payload.request.household.HouseholdBody;
import com.kadioglumf.email.payload.request.household.HouseholdCreateOfferRequest;
import com.kadioglumf.email.payload.request.household.PhBody;
import com.kadioglumf.email.service.email.EmailService;
import org.junit.AfterClass;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.web.multipart.MultipartFile;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Random;

import static org.junit.Assert.fail;

@SpringBootTest
public class HouseholdCreateOfferTemplateTest {
    static Locale defaultLocale = Locale.getDefault();

    @Autowired
    private EmailService emailService;

    private HouseholdCreateOfferRequest request;
    private List<MultipartFile> files;

    @BeforeEach
    void init() {
        files = new ArrayList<>();
        request = new HouseholdCreateOfferRequest();

        HouseholdBody householdBody = new HouseholdBody();
        householdBody.setAssistanceIncluded(true);
        householdBody.setCoverageLimit(BigDecimal.valueOf(2000));
        householdBody.setLuggageValue("200");
        householdBody.setDiebstahlValue(BigDecimal.valueOf(100));
        householdBody.setGlassIncluded(true);
        householdBody.setHausratkasko(BigDecimal.valueOf(50));
        householdBody.setSelbstbehalt("600");

        PhBody phBody = new PhBody();
        phBody.setLimit(BigDecimal.valueOf(500000));
        phBody.setFahrzeugeIncluded(true);
        phBody.setSelbstbehalt("150");

        String name = "test.pdf";
        String originalFileName = "test.pdf";
        String contentType = "application/pdf";
        byte[] content = new byte[10];
        new Random().nextBytes(content);

        files.add(new MockMultipartFile(name, originalFileName, contentType, content));

        request.setEmail("mfatihkadioglu1@gmail.com");
        request.setOfferId("HO1235");
        request.setCompanyName("Basler");
        request.setHouseholdBody(householdBody);
        request.setCalculationType("household_and_ph");
        request.setPhBody(phBody);
        request.setTotalOfferPrice(BigDecimal.valueOf(1550.66));
    }

    @AfterClass
    public static void restoreLocale() {
        Locale.setDefault(defaultLocale);
    }

    @Test
    void sendMailHouseholdCreateOfferWithDefaultLanguage() {
        restoreLocale();
        try {
           emailService.sendHouseholdCreateOfferEmail(request, files);
        } catch (Exception e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
    }

    @Test
    void sendMailHouseholdCreateOfferWithLanguageDE() {
        Locale.setDefault(Locale.GERMAN);
        try {
            emailService.sendHouseholdCreateOfferEmail(request, files);
        } catch (Exception e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
    }

    @Test
    void sendMailHouseholdCreateOfferWithLanguageEN() {
        Locale.setDefault(Locale.ENGLISH);
        try {
            emailService.sendHouseholdCreateOfferEmail(request, files);
        } catch (Exception e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
    }

    @Test
    void sendMailHouseholdCreateOfferWithLanguageIT() {
        Locale.setDefault(Locale.ITALIAN);
        try {
            emailService.sendHouseholdCreateOfferEmail(request, files);
        } catch (Exception e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
    }

    @Test
    void sendHouseholdCreateOfferWithLanguageFR() {
        Locale.setDefault(Locale.FRANCE);
        try {
            emailService.sendHouseholdCreateOfferEmail(request, files);
        } catch (Exception e) {
            e.printStackTrace();
            fail(e.getMessage());
        }
    }
}
