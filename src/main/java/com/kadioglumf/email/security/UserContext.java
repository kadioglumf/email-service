package com.kadioglumf.email.security;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@AllArgsConstructor
@Getter
@Setter
public class UserContext {
    private UserDetailsImpl user;
    private String jwt;
}
