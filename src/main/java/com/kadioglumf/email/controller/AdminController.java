package com.kadioglumf.email.controller;

import com.kadioglumf.email.payload.request.emailtemplate.EmailCommonPlaceHoldersRequest;
import com.kadioglumf.email.payload.request.emailtemplate.EmailTemplateRequest;
import com.kadioglumf.email.payload.request.search.SearchRequest;
import com.kadioglumf.email.payload.response.EmailTemplatePlaceHolderResponse;
import com.kadioglumf.email.payload.response.EmailTemplateResponse;
import com.kadioglumf.email.service.email.EmailTemplateService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.enums.SecuritySchemeType;
import io.swagger.v3.oas.annotations.security.SecurityRequirement;
import io.swagger.v3.oas.annotations.security.SecurityScheme;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import jakarta.validation.Valid;

@RestController
@RequestMapping("/api/email/admin")
@RequiredArgsConstructor
@Validated
@SecurityRequirement(name = "Authorization")
public class AdminController {

    private final EmailTemplateService emailTemplateService;

    @PostMapping("template/createOrUpdate")
    @Operation(summary = "Create Email Template")
    @PreAuthorize("hasRole('MODERATOR') or hasRole('ADMIN')")
    public ResponseEntity<Void> saveOrUpdateTemplate(@Valid @RequestBody EmailTemplateRequest request) {
        emailTemplateService.saveOrUpdateTemplate(request);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("template/getAll")
    @Operation(summary = "Get all blog header")
    @PreAuthorize("hasRole('MODERATOR') or hasRole('ADMIN')")
    public ResponseEntity<Page<EmailTemplateResponse>> getAllTemplates(@Valid @RequestBody SearchRequest request) {
        return new ResponseEntity<>(emailTemplateService.getAllTemplates(request), HttpStatus.OK);
    }

    @DeleteMapping("template/delete")
    @Operation(summary = "Delete Email Template")
    @PreAuthorize("hasRole('MODERATOR') or hasRole('ADMIN')")
    public ResponseEntity<Void> deleteTemplate(@Valid @RequestParam String code) {
        emailTemplateService.deleteTemplate(code);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("placeHolder/createOrUpdate")
    @Operation(summary = "Create Email Template Place Holder")
    @PreAuthorize("hasRole('MODERATOR') or hasRole('ADMIN')")
    public ResponseEntity<Void> saveOrUpdatePlaceHolder(@Valid @RequestBody EmailCommonPlaceHoldersRequest request) {
        emailTemplateService.saveOrUpdatePlaceHolder(request);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("placeHolder/getAll")
    @Operation(summary = "Get all blog header")
    @PreAuthorize("hasRole('MODERATOR') or hasRole('ADMIN')")
    public ResponseEntity<Page<EmailTemplatePlaceHolderResponse>> getAllPlaceHolders(@Valid @RequestBody SearchRequest request) {
        return new ResponseEntity<>(emailTemplateService.getAllPlaceHolders(request), HttpStatus.OK);
    }

    @DeleteMapping("placeHolder/delete")
    @Operation(summary = "Delete Email Place holder")
    @PreAuthorize("hasRole('MODERATOR') or hasRole('ADMIN')")
    public ResponseEntity<Void> deletePlaceHolder(@Valid @RequestParam String code) {
        emailTemplateService.deletePlaceHolder(code);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
