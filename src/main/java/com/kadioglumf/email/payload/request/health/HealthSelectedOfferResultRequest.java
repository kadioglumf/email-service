package com.kadioglumf.email.payload.request.health;

import lombok.Data;

import java.math.BigDecimal;

@Data
public class HealthSelectedOfferResultRequest {
    private BigDecimal price;
    private String type;
    private String tarif;
    private String tarifCode;
}
