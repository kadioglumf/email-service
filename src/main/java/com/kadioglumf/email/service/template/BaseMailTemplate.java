package com.kadioglumf.email.service.template;

import com.kadioglumf.email.dto.EmailTemplateDto;
import com.kadioglumf.email.dto.EmailTemplatePlaceHolderDto;
import com.kadioglumf.email.model.EmailTemplateCode;
import com.kadioglumf.email.model.LanguageType;
import com.kadioglumf.email.service.email.EmailTemplateService;
import com.kadioglumf.email.util.EmailTemplateUtil;
import com.kadioglumf.email.util.LocaleHolder;
import lombok.Getter;
import org.springframework.util.StringUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Getter
public abstract class BaseMailTemplate {

    protected final EmailTemplateService emailTemplateService;
    protected final LanguageType language;
    protected Context content;
    protected String template;
    protected String subject;

    public BaseMailTemplate(EmailTemplateService emailTemplateService) {
        this.emailTemplateService = emailTemplateService;
        this.language = LanguageType.toAttribute(LocaleHolder.getLocale().getLanguage());
        this.content = new Context();
    }

    protected abstract void init();
    protected abstract Map<String, Object> getDynamicPlaceHolders();

    protected void commons(EmailTemplateDto contentTemplate) {
        EmailTemplateDto headerTemplate = emailTemplateService.findByCodeAndLanguage(EmailTemplateCode.HEADER.getValue(), language);
        EmailTemplateDto footerTemplate = emailTemplateService.findByCodeAndLanguage(EmailTemplateCode.FOOTER.getValue(), language);

        String template = EmailTemplateUtil.concatTemplateParts(headerTemplate.getContent(), contentTemplate.getContent(), footerTemplate.getContent());

        content = generateContext(template, getCommonStaticPlaceHolders(contentTemplate.getContent()), content);
        content = generateContext(template, getDynamicPlaceHolders(), content);

        this.subject = contentTemplate.getSubject();
        this.template = EmailTemplateUtil.prepareTemplate(content);
    }

    protected Map<String, Object> getCommonStaticPlaceHolders(String template) {
        Map<String, Object> variables = new HashMap<>();

        List<String> placeHolders = EmailTemplateUtil.valuePlaceHolders(template);
        for (String placeHolder : placeHolders) {
            EmailTemplatePlaceHolderDto placeHolderDto = emailTemplateService.findCommonPlaceHolderByCodeAndLang(placeHolder, LanguageType.toAttribute(LocaleHolder.getLocale().getLanguage()));
            if (placeHolderDto != null && placeHolderDto.getCode() != null) {
                variables.put(placeHolder, placeHolderDto.getValue());
            }
        }
        return variables;
    }

    protected Context generateContext(String template, Map<String, Object> variables, Context context) {
        if (StringUtils.isEmpty(context.getTemplate())) {
            return new Context(template, variables);
        }
        else if (template.equals(context.getTemplate())) {
            context.setVariables(variables);
        }
        return context;
    }
}
