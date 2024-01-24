package com.kadioglumf.email.service.email;

import com.kadioglumf.email.payload.request.health.HealthCreateOfferRequest;
import com.kadioglumf.email.payload.request.household.HouseholdCreateOfferRequest;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface EmailService {

    void sendHealthCreateOfferEmail(HealthCreateOfferRequest offerRequest);

    void sendHouseholdCreateOfferEmail(HouseholdCreateOfferRequest offerRequest, List<MultipartFile> files);
}
