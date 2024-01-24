package com.kadioglumf.email.payload.request.health;

import com.kadioglumf.email.payload.request.BaseMailRequest;
import lombok.Data;

import java.math.BigDecimal;
import java.util.List;

@Data
public class HealthCreateOfferRequest extends BaseMailRequest {
    private String offerId;
    private BigDecimal totalOfferPrice;
    private List<HealthPersonRequest> healthPersonMailRequests;
}
