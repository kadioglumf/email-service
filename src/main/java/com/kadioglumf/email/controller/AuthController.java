package com.kadioglumf.email.controller;

import com.kadioglumf.email.payload.request.auth.LoginRequest;
import com.kadioglumf.email.payload.request.emailtemplate.EmailCommonPlaceHoldersRequest;
import com.kadioglumf.email.payload.request.emailtemplate.EmailTemplateRequest;
import com.kadioglumf.email.payload.request.search.SearchRequest;
import com.kadioglumf.email.payload.response.EmailTemplatePlaceHolderResponse;
import com.kadioglumf.email.payload.response.EmailTemplateResponse;
import com.kadioglumf.email.payload.response.auth.JwtResponse;
import com.kadioglumf.email.security.AuthProviderService;
import com.kadioglumf.email.security.UserDetailsImpl;
import com.kadioglumf.email.service.email.EmailTemplateService;
import io.swagger.annotations.ApiOperation;
import io.swagger.annotations.Authorization;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/auth")
@RequiredArgsConstructor
@Validated
public class AuthController {

    private final AuthenticationManager authenticationManager;
    private final AuthProviderService tokenManager;

    @PostMapping("/login")
    public ResponseEntity<JwtResponse> login(@Valid @RequestBody LoginRequest loginRequest) {
        Authentication authentication = authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(loginRequest.getEmail(), loginRequest.getPassword()));

        UserDetailsImpl userDetails = (UserDetailsImpl) authentication.getPrincipal();

        List<String> roles = userDetails.getAuthorities().stream()
                .map(GrantedAuthority::getAuthority)
                .collect(Collectors.toList());


        String jwt = tokenManager.generateJwtToken(userDetails);

        JwtResponse jwtResponse = new JwtResponse();
        jwtResponse.setToken(jwt);
        jwtResponse.setId(userDetails.getId());
        jwtResponse.setEmail(userDetails.getEmail());
        jwtResponse.setRoles(roles);

        SecurityContextHolder.getContext().setAuthentication(authentication);

        return ResponseEntity.ok(jwtResponse);
    }
}
