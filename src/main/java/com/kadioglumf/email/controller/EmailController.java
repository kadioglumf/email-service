package com.kadioglumf.email.controller;

import com.kadioglumf.email.payload.request.health.HealthCreateOfferRequest;
import com.kadioglumf.email.payload.request.household.HouseholdCreateOfferRequest;
import com.kadioglumf.email.service.email.EmailService;
import io.swagger.v3.oas.annotations.Operation;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@RestController
@RequestMapping("/api/email")
@RequiredArgsConstructor
public class EmailController {

    private final EmailService emailService;


    @PostMapping("/sendHealthCreateOffer")
    @Operation(summary = "Sends a mail for create offer")
    public ResponseEntity<String> sendHealthCreateOfferEmail(@RequestBody HealthCreateOfferRequest offerRequest) {
        emailService.sendHealthCreateOfferEmail(offerRequest);
        return new ResponseEntity<>(HttpStatus.OK);
    }

    @PostMapping("/sendHouseholdCreateOffer")
    @Operation(summary = "Sends a mail for create offer")
    public ResponseEntity<String> sendHouseholdCreateOfferEmail(@RequestPart HouseholdCreateOfferRequest request,
                                                                @RequestPart("files") List<MultipartFile> files) {
        emailService.sendHouseholdCreateOfferEmail(request, files);
        return new ResponseEntity<>(HttpStatus.OK);
    }
}
