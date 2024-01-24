package com.kadioglumf.email.security;

import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService {

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        List<String> roles;
        if ("admin@mail.com".equals(email)) {
            roles = List.of("ROLE_ADMIN");

        }
        else {
            roles = List.of("ROLE_USER");
        }

        return UserDetailsImpl.build(email, roles);
    }

}