package com.kadioglumf.email.security;

import io.jsonwebtoken.ExpiredJwtException;
import io.jsonwebtoken.Jwts;
import io.jsonwebtoken.MalformedJwtException;
import io.jsonwebtoken.UnsupportedJwtException;
import io.jsonwebtoken.security.Keys;
import io.jsonwebtoken.security.SignatureException;
import lombok.RequiredArgsConstructor;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import jakarta.annotation.PostConstruct;

import javax.crypto.SecretKey;
import java.security.Key;
import java.util.Date;
import java.util.stream.Collectors;

@Component
@RequiredArgsConstructor
public class AuthProviderService {
    private static final Logger logger = LoggerFactory.getLogger(AuthProviderService.class);
    private static final String AUTHORITIES_KEY = "auth";

    @Value("${email-service.jwt.access-token-secret}")
    private String jwtAccessTokenSecret;
    @Value("${email-service.jwt.expiration-ms.access-token}")
    private int jwtAccessTokenExpirationMs;
    private SecretKey key;

    @PostConstruct
    public void init() {
        this.key = Keys.hmacShaKeyFor(jwtAccessTokenSecret.getBytes());
    }

    public String generateJwtToken(UserDetailsImpl userPrincipal) {
        String authorities = userPrincipal.getAuthorities().stream().map(GrantedAuthority::getAuthority).collect(Collectors.joining(","));
        return Jwts.builder()
                .subject((userPrincipal.getEmail()))
                .claim(AUTHORITIES_KEY, authorities)
                .issuedAt(new Date())
                .expiration(new Date(System.currentTimeMillis() + jwtAccessTokenExpirationMs))
                .signWith(key)
                .compact();
    }

    public String getEmailFromJwtToken(String token) {
        if (StringUtils.hasText(token) && token.startsWith("Bearer "))
            token = token.substring(7);
        return Jwts.parser().verifyWith(key).build().parseSignedClaims(token).getPayload().getSubject();
    }

    public String removeBearerFromToken(String authToken) {
        if (StringUtils.hasText(authToken) && authToken.startsWith("Bearer "))
            authToken = authToken.substring(7);
        return authToken;
    }

    public boolean validateJwtToken(String authToken) {
        authToken = removeBearerFromToken(authToken);
        try {
            Jwts.parser().verifyWith(key).build().parseSignedClaims(authToken);
            return true;
        } catch (SignatureException e) {
            logger.error("Invalid JWT signature: {}", e.getMessage());
        } catch (MalformedJwtException e) {
            logger.error("Invalid JWT token: {}", e.getMessage());
        } catch (ExpiredJwtException e) {
            logger.error("JWT token is expired: {}", e.getMessage());
        } catch (UnsupportedJwtException e) {
            logger.error("JWT token is unsupported: {}", e.getMessage());
        } catch (IllegalArgumentException e) {
            logger.error("JWT claims string is empty: {}", e.getMessage());
        }
        return false;
    }
}