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
public class PhBody {
    private BigDecimal limit;
    private boolean isFahrzeugeIncluded;
    private String selbstbehalt;
}
