package com.kadioglumf.email.service.email.impl;

import com.kadioglumf.email.exception.EmailServiceException;
import com.kadioglumf.email.model.*;
import com.kadioglumf.email.payload.request.health.HealthCreateOfferRequest;
import com.kadioglumf.email.payload.request.household.HouseholdCreateOfferRequest;
import com.kadioglumf.email.payload.response.error.ErrorType;
import com.kadioglumf.email.repository.EmailInformationRepository;
import com.kadioglumf.email.service.email.EmailService;
import com.kadioglumf.email.service.email.EmailTemplateService;
import com.kadioglumf.email.service.template.*;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeUtility;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Slf4j
@Service
@RequiredArgsConstructor
public class EmailServiceImpl implements EmailService {
    private final EmailTemplateService emailTemplateService;
    private final JavaMailSender mailSender;
    private final EmailInformationRepository emailInformationRepository;

    @Value("${spring.mail.username:test}")
    private String fromEmail;
    @Value("${spring.mail.personal:test}")
    private String personal;

    private void send(String mailTo, String subject, String content, List<MultipartFile> files) {
        checkIfEmailSentInLastMinute(mailTo);
        mailSender.send(message -> {
            MimeMessageHelper helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED, "UTF-8");
            helper.setFrom(fromEmail, personal);
            helper.setTo(createRecipients(mailTo));
            helper.setSubject(subject);
            helper.setText(content, true);
            if (!CollectionUtils.isEmpty(files)) {
                for (MultipartFile file : files) {
                    String contentType = file.getContentType() != null ? file.getContentType() : "application/pdf";
                    helper.addAttachment(file.getOriginalFilename(), file, contentType);
                }

            }
        });
    }

    private void send(String mailTo, String subject, String content) {
        checkIfEmailSentInLastMinute(mailTo);
        mailSender.send(message -> {
            MimeMessageHelper helper = new MimeMessageHelper(message, MimeMessageHelper.MULTIPART_MODE_MIXED, "UTF-8");
            helper.setFrom(fromEmail, personal);
            helper.setTo(createRecipients(mailTo));
            helper.setSubject(subject);
            helper.setText(content, true);
        });
    }

    private InternetAddress[] createRecipients(String recipients) {
        try {
            String toEmail = MimeUtility.encodeText(recipients, "utf-8", "B");
            InternetAddress[] internetAddresses = InternetAddress.parse(toEmail, false);
            for (InternetAddress address : internetAddresses) {
                address.validate();
            }
            return internetAddresses;
        } catch (Exception e) {
            throw new EmailServiceException(ErrorType.INTERNET_ADDRESS_COULD_NOT_VALIDATE_ERROR, e.getMessage());
        }
    }

    @Override
    public void sendHouseholdCreateOfferEmail(HouseholdCreateOfferRequest offerRequest, List<MultipartFile> files) {
        HouseholdCreateOfferTemplate template = new HouseholdCreateOfferTemplate(offerRequest, emailTemplateService);
        send(offerRequest.getEmail(), template.getSubject(), template.getTemplate(), files);
        saveEmailInformation(offerRequest.getEmail(), EmailTemplateCode.TEST1_TEMPLATE);
    }

    @Override
    public void sendHealthCreateOfferEmail(HealthCreateOfferRequest offerRequest) {
        HealthCreateOfferTemplate template = new HealthCreateOfferTemplate(offerRequest, emailTemplateService);
        send(offerRequest.getEmail(), template.getSubject(), template.getTemplate());
        saveEmailInformation(offerRequest.getEmail(), EmailTemplateCode.TEST2_TEMPLATE);
    }

    private void checkIfEmailSentInLastMinute(String email) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(new Date());
        calendar.add(Calendar.MINUTE, -1);

        EmailInformationModel model = emailInformationRepository.findTopByEmailOrderByCreationDateDesc(email);
        if (model == null || model.getCreationDate().before(calendar.getTime())) {
            return;
        }
        throw new EmailServiceException(ErrorType.EMAIL_REPEATED_ERROR);
    }

    private void saveEmailInformation(String email, EmailTemplateCode code) {
        EmailInformationModel model = new EmailInformationModel();
        model.setCode(code);
        model.setEmail(email);
        emailInformationRepository.save(model);
    }
}
