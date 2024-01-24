package com.kadioglumf.email.payload.request.search;

import com.kadioglumf.email.service.search.FilterType;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
@JsonIgnoreProperties(ignoreUnknown = true)
//@JsonNaming(value = PropertyNamingStrategy.SnakeCaseStrategy.class)
public class ConditionRequest implements Serializable {

    @NotNull
    private FilterType filterType;
    private transient Object value;
    private transient Object valueTo;
    private transient List<Object> values;
}
