package com.kadioglumf.email.payload.request.health;

import lombok.Data;

import java.util.List;

@Data
public class HealthSelectedOfferRequest {
    private String companyName;
    private List<HealthSelectedOfferResultRequest> selectedOfferResultMailRequests;
}
