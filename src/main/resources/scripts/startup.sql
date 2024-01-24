INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (1, null, '2023-07-30 14:52:12.000000', '2023-07-30 14:52:13.000000', null, null, null, null, null, null, 'test2_template', 'de', 'Ihr Antrag wurde erfasst.', '<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">

<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->
    <!--[if !mso]><!-->
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet" type="text/css">
    <!--<![endif]-->
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
        }

        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: inherit !important;
        }

        #MessageViewBody a {
            color: inherit;
            text-decoration: none;
        }

        p {
            line-height: inherit
        }

        .desktop_hide,
        .desktop_hide table {
            mso-hide: all;
            display: none;
            max-height: 0px;
            overflow: hidden;
        }

        @media (max-width:520px) {
            .desktop_hide table.icons-inner {
                display: inline-block !important;
            }

            .icons-inner {
                text-align: center;
            }

            .icons-inner td {
                margin: 0 auto;
            }

            .row-content {
                width: 100% !important;
            }

            .mobile_hide {
                display: none;
            }

            .stack .column {
                width: 100%;
                display: block;
            }

            .mobile_hide {
                min-height: 0;
                max-height: 0;
                max-width: 0;
                overflow: hidden;
                font-size: 0px;
            }

            .desktop_hide,
            .desktop_hide table {
                display: table !important;
                max-height: none !important;
            }
        }
    </style>
</head>

<body style="background-color: #FFFFFF; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;">
<table class="nl-container" width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation"
       style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFFF;">
    <tbody>
    <tr>
        <td>
            ${header}

            $[personList]
            <div>
                <!-- root ngfor start -->
                <!-- name surname -->
                <table class="row row-5" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                    <tbody>
                    <tr>
                        <td>
                            <table class="row-content stack" align="center" border="0" cellpadding="0"
                                   cellspacing="0" role="presentation"
                                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                                   width="500">
                                <tbody>
                                <tr>
                                    <td class="column column-1" width="100%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td
                                                        style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                    <div
                                                            style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                        <p style="margin: 0;">${person_name} ${person_surname} -  ${person_birthDate}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <table class="divider_block" width="100%" border="0" cellpadding="0"
                                               cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                            <tr>
                                                <td
                                                        style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                    <div align="center">
                                                        <table border="0" cellpadding="0" cellspacing="0"
                                                               role="presentation" width="100%"
                                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                            <tr>
                                                                <td class="divider_inner"
                                                                    style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                    <span>&#8202;</span></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    </tbody>
                </table>

                $[selectedOfferResult]
                <!-- person pricing list ngfor start-->
                <table class="row row-6" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                    <tbody>
                    <tr>
                        <td>
                            <table class="row-content stack" align="center" border="0" cellpadding="0"
                                   cellspacing="0" role="presentation"
                                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                                   width="500">
                                <tbody>
                                <tr>
                                    <td class="column column-1" width="50%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td style="padding-left:10px;padding-right:10px;">
                                                    <div
                                                            style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                        <p style="margin: 0;">${offer_type} : ${person_selectedOfferRequest_companyName} - ${offer_tarif}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td class="column column-2" width="50%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td
                                                        style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                    <div
                                                            style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                        <p style="margin: 0;">CHF ${offer_price}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    </tbody>
                </table>
                $[/selectedOfferResult]
                <!-- person pricing list ngfor end-->
                <!-- root ngfor end -->
            </div>
            $[/personList]

            ${footer}
        </td>
    </tr>
    </tbody>
</table><!-- End -->
</body>

</html>
');


INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (2, null, '2023-07-30 14:52:12.000000', '2023-07-30 14:52:13.000000', null, null, null, null, null, null, 'test2_template', 'it', 'La vostra domanda è stata registrata.', '<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">

<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->
    <!--[if !mso]><!-->
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet" type="text/css">
    <!--<![endif]-->
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
        }

        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: inherit !important;
        }

        #MessageViewBody a {
            color: inherit;
            text-decoration: none;
        }

        p {
            line-height: inherit
        }

        .desktop_hide,
        .desktop_hide table {
            mso-hide: all;
            display: none;
            max-height: 0px;
            overflow: hidden;
        }

        @media (max-width:520px) {
            .desktop_hide table.icons-inner {
                display: inline-block !important;
            }

            .icons-inner {
                text-align: center;
            }

            .icons-inner td {
                margin: 0 auto;
            }

            .row-content {
                width: 100% !important;
            }

            .mobile_hide {
                display: none;
            }

            .stack .column {
                width: 100%;
                display: block;
            }

            .mobile_hide {
                min-height: 0;
                max-height: 0;
                max-width: 0;
                overflow: hidden;
                font-size: 0px;
            }

            .desktop_hide,
            .desktop_hide table {
                display: table !important;
                max-height: none !important;
            }
        }
    </style>
</head>

<body style="background-color: #FFFFFF; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;">
<table class="nl-container" width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation"
       style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFFF;">
    <tbody>
    <tr>
        <td>
            ${header}

            $[personList]
            <div>
                <!-- root ngfor start -->
                <!-- name surname -->
                <table class="row row-5" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                    <tbody>
                    <tr>
                        <td>
                            <table class="row-content stack" align="center" border="0" cellpadding="0"
                                   cellspacing="0" role="presentation"
                                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                                   width="500">
                                <tbody>
                                <tr>
                                    <td class="column column-1" width="100%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td
                                                        style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                    <div
                                                            style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                        <p style="margin: 0;">${person_name} ${person_surname} -  ${person_birthDate}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <table class="divider_block" width="100%" border="0" cellpadding="0"
                                               cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                            <tr>
                                                <td
                                                        style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                    <div align="center">
                                                        <table border="0" cellpadding="0" cellspacing="0"
                                                               role="presentation" width="100%"
                                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                            <tr>
                                                                <td class="divider_inner"
                                                                    style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                    <span>&#8202;</span></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    </tbody>
                </table>

                $[selectedOfferResult]
                <!-- person pricing list ngfor start-->
                <table class="row row-6" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                    <tbody>
                    <tr>
                        <td>
                            <table class="row-content stack" align="center" border="0" cellpadding="0"
                                   cellspacing="0" role="presentation"
                                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                                   width="500">
                                <tbody>
                                <tr>
                                    <td class="column column-1" width="50%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td style="padding-left:10px;padding-right:10px;">
                                                    <div
                                                            style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                        <p style="margin: 0;">${offer_type} : ${person_selectedOfferRequest_companyName} - ${offer_tarif}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td class="column column-2" width="50%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td
                                                        style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                    <div
                                                            style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                        <p style="margin: 0;">CHF ${offer_price}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    </tbody>
                </table>
                $[/selectedOfferResult]
                <!-- person pricing list ngfor end-->
                <!-- root ngfor end -->
            </div>
            $[/personList]

            ${footer}
        </td>
    </tr>
    </tbody>
</table><!-- End -->
</body>

</html>
');


INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (3, null, '2023-07-30 14:52:12.000000', '2023-07-30 14:52:13.000000', null, null, null, null, null, null, 'test2_template', 'fr', 'Votre demande a été enregistrée.', '<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">

<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->
    <!--[if !mso]><!-->
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet" type="text/css">
    <!--<![endif]-->
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
        }

        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: inherit !important;
        }

        #MessageViewBody a {
            color: inherit;
            text-decoration: none;
        }

        p {
            line-height: inherit
        }

        .desktop_hide,
        .desktop_hide table {
            mso-hide: all;
            display: none;
            max-height: 0px;
            overflow: hidden;
        }

        @media (max-width:520px) {
            .desktop_hide table.icons-inner {
                display: inline-block !important;
            }

            .icons-inner {
                text-align: center;
            }

            .icons-inner td {
                margin: 0 auto;
            }

            .row-content {
                width: 100% !important;
            }

            .mobile_hide {
                display: none;
            }

            .stack .column {
                width: 100%;
                display: block;
            }

            .mobile_hide {
                min-height: 0;
                max-height: 0;
                max-width: 0;
                overflow: hidden;
                font-size: 0px;
            }

            .desktop_hide,
            .desktop_hide table {
                display: table !important;
                max-height: none !important;
            }
        }
    </style>
</head>

<body style="background-color: #FFFFFF; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;">
<table class="nl-container" width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation"
       style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFFF;">
    <tbody>
    <tr>
        <td>
            ${header}

            $[personList]
            <div>
                <!-- root ngfor start -->
                <!-- name surname -->
                <table class="row row-5" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                    <tbody>
                    <tr>
                        <td>
                            <table class="row-content stack" align="center" border="0" cellpadding="0"
                                   cellspacing="0" role="presentation"
                                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                                   width="500">
                                <tbody>
                                <tr>
                                    <td class="column column-1" width="100%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td
                                                        style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                    <div
                                                            style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                        <p style="margin: 0;">${person_name} ${person_surname} -  ${person_birthDate}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <table class="divider_block" width="100%" border="0" cellpadding="0"
                                               cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                            <tr>
                                                <td
                                                        style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                    <div align="center">
                                                        <table border="0" cellpadding="0" cellspacing="0"
                                                               role="presentation" width="100%"
                                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                            <tr>
                                                                <td class="divider_inner"
                                                                    style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                    <span>&#8202;</span></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    </tbody>
                </table>

                $[selectedOfferResult]
                <!-- person pricing list ngfor start-->
                <table class="row row-6" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                    <tbody>
                    <tr>
                        <td>
                            <table class="row-content stack" align="center" border="0" cellpadding="0"
                                   cellspacing="0" role="presentation"
                                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                                   width="500">
                                <tbody>
                                <tr>
                                    <td class="column column-1" width="50%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td style="padding-left:10px;padding-right:10px;">
                                                    <div
                                                            style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                        <p style="margin: 0;">${offer_type} : ${person_selectedOfferRequest_companyName} - ${offer_tarif}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td class="column column-2" width="50%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td
                                                        style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                    <div
                                                            style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                        <p style="margin: 0;">CHF ${offer_price}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    </tbody>
                </table>
                $[/selectedOfferResult]
                <!-- person pricing list ngfor end-->
                <!-- root ngfor end -->
            </div>
            $[/personList]

            ${footer}
        </td>
    </tr>
    </tbody>
</table><!-- End -->
</body>

</html>
');


INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (4, null, '2023-07-30 14:52:12.000000', '2023-07-30 14:52:13.000000', null, null, null, null, null, null, 'test2_template', 'en', 'Your application has been recorded.', '<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">

<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->
    <!--[if !mso]><!-->
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet" type="text/css">
    <!--<![endif]-->
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
        }

        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: inherit !important;
        }

        #MessageViewBody a {
            color: inherit;
            text-decoration: none;
        }

        p {
            line-height: inherit
        }

        .desktop_hide,
        .desktop_hide table {
            mso-hide: all;
            display: none;
            max-height: 0px;
            overflow: hidden;
        }

        @media (max-width:520px) {
            .desktop_hide table.icons-inner {
                display: inline-block !important;
            }

            .icons-inner {
                text-align: center;
            }

            .icons-inner td {
                margin: 0 auto;
            }

            .row-content {
                width: 100% !important;
            }

            .mobile_hide {
                display: none;
            }

            .stack .column {
                width: 100%;
                display: block;
            }

            .mobile_hide {
                min-height: 0;
                max-height: 0;
                max-width: 0;
                overflow: hidden;
                font-size: 0px;
            }

            .desktop_hide,
            .desktop_hide table {
                display: table !important;
                max-height: none !important;
            }
        }
    </style>
</head>

<body style="background-color: #FFFFFF; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;">
<table class="nl-container" width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation"
       style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFFF;">
    <tbody>
    <tr>
        <td>
            ${header}

            $[personList]
            <div>
                <!-- root ngfor start -->
                <!-- name surname -->
                <table class="row row-5" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                    <tbody>
                    <tr>
                        <td>
                            <table class="row-content stack" align="center" border="0" cellpadding="0"
                                   cellspacing="0" role="presentation"
                                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                                   width="500">
                                <tbody>
                                <tr>
                                    <td class="column column-1" width="100%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td
                                                        style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                    <div
                                                            style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                        <p style="margin: 0;">${person_name} ${person_surname} -  ${person_birthDate}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                        <table class="divider_block" width="100%" border="0" cellpadding="0"
                                               cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                            <tr>
                                                <td
                                                        style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                    <div align="center">
                                                        <table border="0" cellpadding="0" cellspacing="0"
                                                               role="presentation" width="100%"
                                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                            <tr>
                                                                <td class="divider_inner"
                                                                    style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                    <span>&#8202;</span></td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    </tbody>
                </table>

                $[selectedOfferResult]
                <!-- person pricing list ngfor start-->
                <table class="row row-6" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                    <tbody>
                    <tr>
                        <td>
                            <table class="row-content stack" align="center" border="0" cellpadding="0"
                                   cellspacing="0" role="presentation"
                                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                                   width="500">
                                <tbody>
                                <tr>
                                    <td class="column column-1" width="50%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td style="padding-left:10px;padding-right:10px;">
                                                    <div
                                                            style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                        <p style="margin: 0;">${offer_type} : ${person_selectedOfferRequest_companyName} - ${offer_tarif}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td class="column column-2" width="50%"
                                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                        <table class="paragraph_block" width="100%" border="0"
                                               cellpadding="0" cellspacing="0" role="presentation"
                                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                            <tr>
                                                <td
                                                        style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                    <div
                                                            style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                        <p style="margin: 0;">CHF ${offer_price}</p>
                                                    </div>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </td>
                    </tr>
                    </tbody>
                </table>
                $[/selectedOfferResult]
                <!-- person pricing list ngfor end-->
                <!-- root ngfor end -->
            </div>
            $[/personList]

            ${footer}
        </td>
    </tr>
    </tbody>
</table><!-- End -->
</body>

</html>
');


INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (5, null, '2023-07-30 15:02:02.000000', '2023-07-30 15:02:05.000000', null, null, null, null, null, null, 'header', 'en', null, '<table class="row row-1" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
    <tbody>
    <tr>
        <td>
            <table class="row-content stack" align="center" border="0" cellpadding="0"
                   cellspacing="0" role="presentation"
                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                   width="500">
                <tbody>
                <tr>
                    <td class="column column-1" width="50%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="image_block" width="100%" border="0" cellpadding="5"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>

                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="column column-2" width="50%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="paragraph_block" width="100%" border="0"
                               cellpadding="0" cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                            <tr>
                                <td
                                        style="padding-bottom:15px;padding-left:10px;padding-right:10px;padding-top:15px;">
                                    <div
                                            style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:16px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:19.2px;">
                                        <p style="margin: 0;">${cornerTitle}</p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>');






INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (6, null, '2023-07-30 15:02:02.000000', '2023-07-30 15:02:05.000000', null, null, null, null, null, null, 'header', 'de', null,'<table class="row row-1" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
    <tbody>
    <tr>
        <td>
            <table class="row-content stack" align="center" border="0" cellpadding="0"
                   cellspacing="0" role="presentation"
                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                   width="500">
                <tbody>
                <tr>
                    <td class="column column-1" width="50%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="image_block" width="100%" border="0" cellpadding="5"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>

                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="column column-2" width="50%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="paragraph_block" width="100%" border="0"
                               cellpadding="0" cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                            <tr>
                                <td
                                        style="padding-bottom:15px;padding-left:10px;padding-right:10px;padding-top:15px;">
                                    <div
                                            style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:16px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:19.2px;">
                                        <p style="margin: 0;">${cornerTitle}</p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>');





INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (7, null, '2023-07-30 15:02:02.000000', '2023-07-30 15:02:05.000000', null, null, null, null, null, null, 'header', 'fr', null,  '<table class="row row-1" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
    <tbody>
    <tr>
        <td>
            <table class="row-content stack" align="center" border="0" cellpadding="0"
                   cellspacing="0" role="presentation"
                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                   width="500">
                <tbody>
                <tr>
                    <td class="column column-1" width="50%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="image_block" width="100%" border="0" cellpadding="5"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>

                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="column column-2" width="50%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="paragraph_block" width="100%" border="0"
                               cellpadding="0" cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                            <tr>
                                <td
                                        style="padding-bottom:15px;padding-left:10px;padding-right:10px;padding-top:15px;">
                                    <div
                                            style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:16px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:19.2px;">
                                        <p style="margin: 0;">${cornerTitle}</p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>');




INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (8, null, '2023-07-30 15:02:02.000000', '2023-07-30 15:02:05.000000', null, null, null, null, null, null, 'header', 'it', null, '<table class="row row-1" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
    <tbody>
    <tr>
        <td>
            <table class="row-content stack" align="center" border="0" cellpadding="0"
                   cellspacing="0" role="presentation"
                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                   width="500">
                <tbody>
                <tr>
                    <td class="column column-1" width="50%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="image_block" width="100%" border="0" cellpadding="5"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>

                                </td>
                            </tr>
                        </table>
                    </td>
                    <td class="column column-2" width="50%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="paragraph_block" width="100%" border="0"
                               cellpadding="0" cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                            <tr>
                                <td
                                        style="padding-bottom:15px;padding-left:10px;padding-right:10px;padding-top:15px;">
                                    <div
                                            style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:16px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:19.2px;">
                                        <p style="margin: 0;">${cornerTitle}</p>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>');


INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (9, null, '2023-07-30 15:02:02.000000', '2023-07-30 15:02:05.000000', null, null, null, null, null, null, 'footer', 'de', null,  '<!-- footer -->
<table class="row row-13" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #f8f8f8;margin-top: 22px;">
    <tbody>
    <tr>
        <td>
            <table class="row-content stack" align="center" border="0" cellpadding="0" cellspacing="0"
                   role="presentation"
                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;" width="500">
                <tbody>
                <tr>
                    <td class="column column-1" width="100%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div style="height:30px;">&nbsp;</div>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div
                                                style="margin-top: 20px;border-top:1px dashed #D6D6D6;margin-bottom: 40px;">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div style="height-top: 20px;">&nbsp;</div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>
');

INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (10, null, '2023-07-30 15:02:02.000000', '2023-07-30 15:02:05.000000', null, null, null, null, null, null, 'footer', 'en', null,  '<!-- footer -->
<table class="row row-13" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #f8f8f8;margin-top: 22px;">
    <tbody>
    <tr>
        <td>
            <table class="row-content stack" align="center" border="0" cellpadding="0" cellspacing="0"
                   role="presentation"
                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;" width="500">
                <tbody>
                <tr>
                    <td class="column column-1" width="100%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div style="height:30px;">&nbsp;</div>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div
                                                style="margin-top: 20px;border-top:1px dashed #D6D6D6;margin-bottom: 40px;">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div style="height-top: 20px;">&nbsp;</div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>
');



INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (11, null, '2023-07-30 15:02:02.000000', '2023-07-30 15:02:05.000000', null, null, null, null, null, null, 'footer', 'fr', null,  '<!-- footer -->
<table class="row row-13" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #f8f8f8;margin-top: 22px;">
    <tbody>
    <tr>
        <td>
            <table class="row-content stack" align="center" border="0" cellpadding="0" cellspacing="0"
                   role="presentation"
                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;" width="500">
                <tbody>
                <tr>
                    <td class="column column-1" width="100%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div style="height:30px;">&nbsp;</div>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div
                                                style="margin-top: 20px;border-top:1px dashed #D6D6D6;margin-bottom: 40px;">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div style="height-top: 20px;">&nbsp;</div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>
');


INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (12, null, '2023-07-30 15:02:02.000000', '2023-07-30 15:02:05.000000', null, null, null, null, null, null, 'footer', 'it', null,  '<!-- footer -->
<table class="row row-13" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
       role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #f8f8f8;margin-top: 22px;">
    <tbody>
    <tr>
        <td>
            <table class="row-content stack" align="center" border="0" cellpadding="0" cellspacing="0"
                   role="presentation"
                   style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;" width="500">
                <tbody>
                <tr>
                    <td class="column column-1" width="100%"
                        style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div style="height:30px;">&nbsp;</div>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div
                                                style="margin-top: 20px;border-top:1px dashed #D6D6D6;margin-bottom: 40px;">
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <table class="html_block" width="100%" border="0" cellpadding="0" cellspacing="0"
                               role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                            <tr>
                                <td>
                                    <div style="font-family:Arial, Helvetica Neue, Helvetica, sans-serif;text-align:center;"
                                         align="center">
                                        <div style="height-top: 20px;">&nbsp;</div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
        </td>
    </tr>
    </tbody>
</table>
');


INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (13, null, '2023-07-30 14:52:12.000000', '2023-07-30 14:52:13.000000', null, null, null, null, null, null, 'test1_template', 'en',  'Your application has been recorded.', '<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">

<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->
    <!--[if !mso]><!-->
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet" type="text/css">
    <!--<![endif]-->
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
        }

        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: inherit !important;
        }

        #MessageViewBody a {
            color: inherit;
            text-decoration: none;
        }

        p {
            line-height: inherit
        }

        .desktop_hide,
        .desktop_hide table {
            mso-hide: all;
            display: none;
            max-height: 0px;
            overflow: hidden;
        }

        @media (max-width:520px) {
            .desktop_hide table.icons-inner {
                display: inline-block !important;
            }

            .icons-inner {
                text-align: center;
            }

            .icons-inner td {
                margin: 0 auto;
            }

            .row-content {
                width: 100% !important;
            }

            .mobile_hide {
                display: none;
            }

            .stack .column {
                width: 100%;
                display: block;
            }

            .mobile_hide {
                min-height: 0;
                max-height: 0;
                max-width: 0;
                overflow: hidden;
                font-size: 0px;
            }

            .desktop_hide,
            .desktop_hide table {
                display: table !important;
                max-height: none !important;
            }
        }
    </style>
</head>

<body style="background-color: #FFFFFF; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;">
<table class="nl-container" width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation"
       style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFFF;">
    <tbody>
    <tr>
        <td>
            ${header}
            <!--content-->
            <table class="row row-2" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td style="padding-bottom:20px;padding-top:10px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="heading_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-bottom:10px;padding-left:10px;padding-right:10px;text-align:center;width:100%;">
                                                <h1
                                                        style="margin: 0; color: #1655af; direction: ltr; font-family: ''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif; font-size: 24px; font-weight: 700; letter-spacing: normal; line-height: 120%; text-align: left; margin-top: 0; margin-bottom: 0;">
                                                    <span class="tinyMce-placeholder" >${household_contentTitle}</span></h1>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-bottom:40px;padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#414141;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:16px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;" >${offer_contentText}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>

            <!--household-->
            $(isShowHousehold)
            <table class="row row-7" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                <div
                                                        style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;" >${household_householdTitle}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>


            $[householdValues]
            <table class="row row-6 household" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td style="padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${household_key}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="column column-2" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                <div
                                                        style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${household_value}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
            $[/householdValues]
            $(/isShowHousehold)

            $(isShowPh)
            <!--privathaflight-->
            <table class="row row-8" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                <div
                                                        style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;">${household_phTitle}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>


            $[phValues]
            <table class="row row-8 private" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td style="padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${ph_key}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="column column-2" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                <div
                                                        style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${ph_value}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
            $[/phValues]
            $(/isShowPh)
            ${footer}
        </td>
    </tr>
    </tbody>
</table><!-- End -->
</body>

</html>
');

INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (14, null, '2023-07-30 14:52:12.000000', '2023-07-30 14:52:13.000000', null, null, null, null, null, null, 'test1_template', 'it', 'La vostra domanda è stata registrata.', '<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">

<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->
    <!--[if !mso]><!-->
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet" type="text/css">
    <!--<![endif]-->
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
        }

        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: inherit !important;
        }

        #MessageViewBody a {
            color: inherit;
            text-decoration: none;
        }

        p {
            line-height: inherit
        }

        .desktop_hide,
        .desktop_hide table {
            mso-hide: all;
            display: none;
            max-height: 0px;
            overflow: hidden;
        }

        @media (max-width:520px) {
            .desktop_hide table.icons-inner {
                display: inline-block !important;
            }

            .icons-inner {
                text-align: center;
            }

            .icons-inner td {
                margin: 0 auto;
            }

            .row-content {
                width: 100% !important;
            }

            .mobile_hide {
                display: none;
            }

            .stack .column {
                width: 100%;
                display: block;
            }

            .mobile_hide {
                min-height: 0;
                max-height: 0;
                max-width: 0;
                overflow: hidden;
                font-size: 0px;
            }

            .desktop_hide,
            .desktop_hide table {
                display: table !important;
                max-height: none !important;
            }
        }
    </style>
</head>

<body style="background-color: #FFFFFF; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;">
<table class="nl-container" width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation"
       style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFFF;">
    <tbody>
    <tr>
        <td>
            ${header}
            <!--content-->
            <table class="row row-2" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td style="padding-bottom:20px;padding-top:10px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="heading_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-bottom:10px;padding-left:10px;padding-right:10px;text-align:center;width:100%;">
                                                <h1
                                                        style="margin: 0; color: #1655af; direction: ltr; font-family: ''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif; font-size: 24px; font-weight: 700; letter-spacing: normal; line-height: 120%; text-align: left; margin-top: 0; margin-bottom: 0;">
                                                    <span class="tinyMce-placeholder" >${household_contentTitle}</span></h1>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-bottom:40px;padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#414141;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:16px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;" >${offer_contentText}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>

            <!--household-->
            $(isShowHousehold)
            <table class="row row-7" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                <div
                                                        style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;" >${household_householdTitle}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>


            $[householdValues]
            <table class="row row-6 household" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td style="padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${household_key}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="column column-2" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                <div
                                                        style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${household_value}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
            $[/householdValues]
            $(/isShowHousehold)

            $(isShowPh)
            <!--privathaflight-->
            <table class="row row-8" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                <div
                                                        style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;">${household_phTitle}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>


            $[phValues]
            <table class="row row-8 private" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td style="padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${ph_key}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="column column-2" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                <div
                                                        style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${ph_value}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
            $[/phValues]
            $(/isShowPh)
            ${footer}
        </td>
    </tr>
    </tbody>
</table><!-- End -->
</body>

</html>
');


INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (15, null, '2023-07-30 14:52:12.000000', '2023-07-30 14:52:13.000000', null, null, null, null, null, null, 'test1_template', 'fr',  'Votre demande a été enregistrée.', '<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">

<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->
    <!--[if !mso]><!-->
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet" type="text/css">
    <!--<![endif]-->
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
        }

        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: inherit !important;
        }

        #MessageViewBody a {
            color: inherit;
            text-decoration: none;
        }

        p {
            line-height: inherit
        }

        .desktop_hide,
        .desktop_hide table {
            mso-hide: all;
            display: none;
            max-height: 0px;
            overflow: hidden;
        }

        @media (max-width:520px) {
            .desktop_hide table.icons-inner {
                display: inline-block !important;
            }

            .icons-inner {
                text-align: center;
            }

            .icons-inner td {
                margin: 0 auto;
            }

            .row-content {
                width: 100% !important;
            }

            .mobile_hide {
                display: none;
            }

            .stack .column {
                width: 100%;
                display: block;
            }

            .mobile_hide {
                min-height: 0;
                max-height: 0;
                max-width: 0;
                overflow: hidden;
                font-size: 0px;
            }

            .desktop_hide,
            .desktop_hide table {
                display: table !important;
                max-height: none !important;
            }
        }
    </style>
</head>

<body style="background-color: #FFFFFF; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;">
<table class="nl-container" width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation"
       style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFFF;">
    <tbody>
    <tr>
        <td>
            ${header}
            <!--content-->
            <table class="row row-2" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td style="padding-bottom:20px;padding-top:10px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="heading_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-bottom:10px;padding-left:10px;padding-right:10px;text-align:center;width:100%;">
                                                <h1
                                                        style="margin: 0; color: #1655af; direction: ltr; font-family: ''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif; font-size: 24px; font-weight: 700; letter-spacing: normal; line-height: 120%; text-align: left; margin-top: 0; margin-bottom: 0;">
                                                    <span class="tinyMce-placeholder" >${household_contentTitle}</span></h1>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-bottom:40px;padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#414141;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:16px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;" >${offer_contentText}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>

            <!--household-->
            $(isShowHousehold)
            <table class="row row-7" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                <div
                                                        style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;" >${household_householdTitle}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>


            $[householdValues]
            <table class="row row-6 household" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td style="padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${household_key}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="column column-2" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                <div
                                                        style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${household_value}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
            $[/householdValues]
            $(/isShowHousehold)

            $(isShowPh)
            <!--privathaflight-->
            <table class="row row-8" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                <div
                                                        style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;">${household_phTitle}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>


            $[phValues]
            <table class="row row-8 private" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td style="padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${ph_key}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="column column-2" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                <div
                                                        style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${ph_value}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
            $[/phValues]
            $(/isShowPh)
            ${footer}
        </td>
    </tr>
    </tbody>
</table><!-- End -->
</body>

</html>
');


INSERT INTO public.email_template (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language,  subject, content) VALUES (16, null, '2023-07-30 14:52:12.000000', '2023-07-30 14:52:13.000000', null, null, null, null, null, null, 'test1_template', 'de', 'Ihr Antrag wurde erfasst.', '<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml"
      xmlns:th="http://www.thymeleaf.org">

<head>
    <title></title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--[if mso]><xml><o:OfficeDocumentSettings><o:PixelsPerInch>96</o:PixelsPerInch><o:AllowPNG/></o:OfficeDocumentSettings></xml><![endif]-->
    <!--[if !mso]><!-->
    <link href="https://fonts.googleapis.com/css?family=Cabin" rel="stylesheet" type="text/css">
    <!--<![endif]-->
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
        }

        a[x-apple-data-detectors] {
            color: inherit !important;
            text-decoration: inherit !important;
        }

        #MessageViewBody a {
            color: inherit;
            text-decoration: none;
        }

        p {
            line-height: inherit
        }

        .desktop_hide,
        .desktop_hide table {
            mso-hide: all;
            display: none;
            max-height: 0px;
            overflow: hidden;
        }

        @media (max-width:520px) {
            .desktop_hide table.icons-inner {
                display: inline-block !important;
            }

            .icons-inner {
                text-align: center;
            }

            .icons-inner td {
                margin: 0 auto;
            }

            .row-content {
                width: 100% !important;
            }

            .mobile_hide {
                display: none;
            }

            .stack .column {
                width: 100%;
                display: block;
            }

            .mobile_hide {
                min-height: 0;
                max-height: 0;
                max-width: 0;
                overflow: hidden;
                font-size: 0px;
            }

            .desktop_hide,
            .desktop_hide table {
                display: table !important;
                max-height: none !important;
            }
        }
    </style>
</head>

<body style="background-color: #FFFFFF; margin: 0; padding: 0; -webkit-text-size-adjust: none; text-size-adjust: none;">
<table class="nl-container" width="100%" border="0" cellpadding="0" cellspacing="0" role="presentation"
       style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; background-color: #FFFFFF;">
    <tbody>
    <tr>
        <td>
            ${header}
            <!--content-->
            <table class="row row-2" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td style="padding-bottom:20px;padding-top:10px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="heading_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-bottom:10px;padding-left:10px;padding-right:10px;text-align:center;width:100%;">
                                                <h1
                                                        style="margin: 0; color: #1655af; direction: ltr; font-family: ''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif; font-size: 24px; font-weight: 700; letter-spacing: normal; line-height: 120%; text-align: left; margin-top: 0; margin-bottom: 0;">
                                                    <span class="tinyMce-placeholder" >${household_contentTitle}</span></h1>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-bottom:40px;padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#414141;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:16px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;" >${offer_contentText}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>

            <!--household-->
            $(isShowHousehold)
            <table class="row row-7" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                <div
                                                        style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;" >${household_householdTitle}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>


            $[householdValues]
            <table class="row row-6 household" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td style="padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${household_key}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="column column-2" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                <div
                                                        style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${household_value}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
            $[/householdValues]
            $(/isShowHousehold)

            $(isShowPh)
            <!--privathaflight-->
            <table class="row row-8" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="100%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; padding-top: 5px; padding-bottom: 5px; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-top:10px;padding-right:10px;padding-left:10px;">
                                                <div
                                                        style="color:#1655af;font-size:16px;font-family:Arial, Helvetica Neue, Helvetica, sans-serif;font-weight:700;line-height:120%;text-align:left;direction:ltr;letter-spacing:0px;mso-line-height-alt:19.2px;">
                                                    <p style="margin: 0;">${household_phTitle}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                    <table class="divider_block" width="100%" border="0" cellpadding="0"
                                           cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                        <tr>
                                            <td
                                                    style="padding-right:5px;padding-bottom:10px;padding-left:5px;">
                                                <div align="center">
                                                    <table border="0" cellpadding="0" cellspacing="0"
                                                           role="presentation" width="100%"
                                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                                                        <tr>
                                                            <td class="divider_inner"
                                                                style="font-size: 1px; line-height: 1px; border-top: 1px solid #BBBBBB;">
                                                                <span>&#8202;</span></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>


            $[phValues]
            <table class="row row-8 private" align="center" width="100%" border="0" cellpadding="0" cellspacing="0"
                   role="presentation" style="mso-table-lspace: 0pt; mso-table-rspace: 0pt;">
                <tbody>
                <tr>
                    <td>
                        <table class="row-content stack" align="center" border="0" cellpadding="0"
                               cellspacing="0" role="presentation"
                               style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; color: #000000; width: 500px;"
                               width="500">
                            <tbody>
                            <tr>
                                <td class="column column-1" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td style="padding-left:10px;padding-right:10px;">
                                                <div
                                                        style="color:#393d47;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:400;letter-spacing:0px;line-height:120%;text-align:left;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${ph_key}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td class="column column-2" width="50%"
                                    style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; font-weight: 400; text-align: left; vertical-align: top; border-top: 0px; border-right: 0px; border-bottom: 0px; border-left: 0px;">
                                    <table class="paragraph_block" width="100%" border="0"
                                           cellpadding="0" cellspacing="0" role="presentation"
                                           style="mso-table-lspace: 0pt; mso-table-rspace: 0pt; word-break: break-word;">
                                        <tr>
                                            <td
                                                    style="padding-left:10px;padding-right:10px;padding-top:5px;padding-bottom:5px;">
                                                <div
                                                        style="color:#ff9900;direction:ltr;font-family:''Cabin'', Arial, ''Helvetica Neue'', Helvetica, sans-serif;font-size:14px;font-weight:700;letter-spacing:0px;line-height:120%;text-align:right;mso-line-height-alt:16.8px;">
                                                    <p style="margin: 0;" >${ph_value}</p>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                </tbody>
            </table>
            $[/phValues]
            $(/isShowPh)
            ${footer}
        </td>
    </tr>
    </tbody>
</table><!-- End -->
</body>

</html>
');


INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (1, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'health_cornerTitle', 'en', 'Health Insurance');


INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (2, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'health_cornerTitle', 'de', 'Krankenkasse');


INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (3, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'health_cornerTitle', 'it', 'Assicurazione sanitaria');


INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (4, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'health_cornerTitle', 'fr', 'Assurance maladie');


INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (5, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_cornerTitle', 'en', 'Household & personal liability');


INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (6, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_cornerTitle', 'de', 'Hausrat & Privathaftpflicht');


INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (7, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_cornerTitle', 'fr', 'Responsabilité domestique et personnelle');


INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (8, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_cornerTitle', 'it', 'Responsabilità domestica e personale');






















INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (9, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'yes', 'de', 'Ja');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (10, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'yes', 'en', 'Yes');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (11, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'yes', 'fr', 'Oui');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (12, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'yes', 'it', 'Sì');

INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (13, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'no', 'en', 'No');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (14, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'no', 'it', 'No');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (15, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'no', 'fr', 'Non');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (16, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'no', 'de', 'Nein');


INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (17, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_grossNegligenceProtection', 'de', 'Grobfahrlässigkeitsschutz');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (18, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_grossNegligenceProtection', 'en', 'Gross Negligence Protection');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (19, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_grossNegligenceProtection', 'it', 'Protezione da negligenza grave');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (20, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_grossNegligenceProtection', 'fr', 'Protection contre la négligence grave');


INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (21, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_fahrzeugeIncluded', 'en', 'Drive other people''s vehicles');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (22, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_fahrzeugeIncluded', 'de', 'Führen fremder Fahrzeuge');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (23, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_fahrzeugeIncluded', 'it', 'Guidare i veicoli di altre persone');
INSERT INTO public.email_template_common_placeholder (id, create_by, creation_date, last_update_date, update_by, created_by_ip_addr, origin, origin_ip_addr, updated_by_ip_addr, user_agent, code, language, value) VALUES (24, null, '2023-08-03 09:45:08.000000', '2023-08-03 09:45:09.000000', null, null, null, null, null, null, 'household_fahrzeugeIncluded', 'fr', 'Conduire les véhicules d''autrui');

