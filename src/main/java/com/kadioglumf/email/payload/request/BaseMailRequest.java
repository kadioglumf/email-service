package com.kadioglumf.email.payload.request;

import lombok.Getter;
import lombok.Setter;

import javax.validation.constraints.NotBlank;

@Getter
@Setter
public abstract class BaseMailRequest {
    @NotBlank
    private String email;
}
