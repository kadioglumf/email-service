package com.kadioglumf.email.payload.request.household;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class HouseholdBody {
    private BigDecimal coverageLimit;
    private Boolean glassIncluded;
    private BigDecimal diebstahlValue;
    private BigDecimal hausratkasko;
    private Boolean assistanceIncluded;
    private String selbstbehalt;
    private String luggageValue;
}
