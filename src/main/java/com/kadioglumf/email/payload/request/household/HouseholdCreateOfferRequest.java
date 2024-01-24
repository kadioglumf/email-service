package com.kadioglumf.email.payload.request.household;

import com.kadioglumf.email.payload.request.BaseMailRequest;
import lombok.Data;

import java.math.BigDecimal;

@Data
public class HouseholdCreateOfferRequest extends BaseMailRequest {
    private String offerId;
    private String companyName;
    private BigDecimal totalOfferPrice;
    private String calculationType;
    private HouseholdBody householdBody;
    private PhBody phBody;
}
