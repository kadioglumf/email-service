package com.kadioglumf.email.payload.request.health;

import lombok.Data;

@Data
public class HealthPersonRequest {
    private String name;
    private String surname;
    private String birthDate;
    private HealthSelectedOfferRequest selectedOfferRequest;
}
