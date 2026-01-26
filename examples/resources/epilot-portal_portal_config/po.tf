# epilot-portal_portal_config.my_epilot-portal_portal_config:
resource "epilot-portal_portal_config" "my_epilot-portal_portal_config" {
    access_token                 = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6IjRaRnpITVkyVjJyMXRjcW15bEJUaVozSkRSR3pKVW5JeG5Rcm9rQVNGOUEifQ.eyJ0b2tlbl91c2UiOiJhY2Nlc3MiLCJhdWQiOiJlcGlsb3QiLCJ0b2tlbl9pZCI6InBvcnRhbF9CUGowR0RSdVRDZk9JNEJzTkJ5T2MiLCJ0b2tlbl9uYW1lIjoiVG9rZW46IFRva2VuIEVORF9DVVNUT01FUl9QT1JUQUwiLCJvcmdfaWQiOiIyMDAwMDM4OCIsInVzZXJfaWQiOiJwb3J0YWxfQlBqMEdEUnVUQ2ZPSTRCc05CeU9jIiwidG9rZW5fdHlwZSI6InBvcnRhbCIsImN1c3RvbTppdnlfb3JnX2lkIjoiMjAwMDAzODgiLCJjdXN0b206aXZ5X3VzZXJfaWQiOiJwb3J0YWxfQlBqMEdEUnVUQ2ZPSTRCc05CeU9jIiwiaXNzIjoiaHR0cHM6Ly9hY2Nlc3MtdG9rZW4uc2xzLmVwaWxvdC5pby92MS9hY2Nlc3MtdG9rZW5zIiwiaWF0IjoxNzY5MTU5NTI4fQ.MhDpA6IEHkFbN4BACRXEokVqnfTjQEdiVi3CcwWUHOIPafRh3Vqe9uVn1BV4UBmKTzDkRa0MeQ3LtQc_WaRHvKA_JgFLEXjawUsZ716VDqwX70gSf4TGexkVatXMxtRAsaQr1DL535bAttVo-195zs-zmYYUc3uyvEK5WVeV9-4wI9kpvYN3-Wsp2xUnTyoWjSfrdD19VbjM6y8pxlCg9Zn5f3e4t8ya_hkmozznLKX1CSXINLsFRuqVTkD6bguyUMOaH5HgJf26StweNFXiBOKeBmec5VsapLqoiftHMl1rI0xFLU9zrYzUtI0XRz178HMIcmq6bCDnD_MiVNYzdw"
    auth_settings                = jsonencode(
        {
            auto_redirect_to_sso    = true
            entry_point             = "SSO"
            preferred_sso_providers = [
                "custom_sso",
            ]
        }
    )
    cognito_details              = {
        cognito_user_pool_arn       = "arn:aws:cognito-idp:eu-central-1:893804459037:userpool/eu-central-1_7ZB1kIy5A"
        cognito_user_pool_client_id = "4c6v0vm3eeub1v8f1vjjm4cmhl"
        cognito_user_pool_id        = "eu-central-1_7ZB1kIy5A"
        password_policy             = {
            maximum_length    = 256
            minimum_length    = 8
            require_lowercase = true
            require_numbers   = true
            require_symbols   = true
            require_uppercase = true
        }
    }
    config                       = jsonencode(
        {
            analytics           = {
                enabled = false
                tool    = {
                    config = {}
                    id     = "googleAnalytics"
                    name   = "Google Analytics"
                }
            }
            available_languages = [
                "german",
            ]
            layout              = {
                style = "compact"
            }
            login               = {
                leftSideBullets     = {
                    de = [
                        {
                            description = "welcome_banner.login.information.one.description"
                            title       = "welcome_banner.login.information.one.title"
                        },
                        {
                            description = "welcome_banner.login.information.two.description"
                            title       = "welcome_banner.login.information.two.title"
                        },
                        {
                            description = "welcome_banner.login.information.three.description"
                            title       = "welcome_banner.login.information.three.title"
                        },
                    ]
                    en = [
                        {
                            description = "welcome_banner.login.information.one.description"
                            title       = "welcome_banner.login.information.one.title"
                        },
                        {
                            description = "welcome_banner.login.information.two.description"
                            title       = "welcome_banner.login.information.two.title"
                        },
                        {
                            description = "welcome_banner.login.information.three.description"
                            title       = "welcome_banner.login.information.three.title"
                        },
                    ]
                }
                showLeftSideBullets = true
                showLeftSideImage   = true
                showLeftSideLayout  = true
                showLeftSideTitle   = true
            }
            register            = {
                leftSideBullets     = {
                    de = [
                        {
                            description = "welcome_banner.register.information.one.description"
                            title       = "welcome_banner.register.information.one.title"
                        },
                        {
                            description = "welcome_banner.register.information.two.description"
                            title       = "welcome_banner.register.information.two.title"
                        },
                        {
                            description = "welcome_banner.register.information.three.description"
                            title       = "welcome_banner.register.information.three.title"
                        },
                    ]
                    en = [
                        {
                            description = "welcome_banner.register.information.one.description"
                            title       = "welcome_banner.register.information.one.title"
                        },
                        {
                            description = "welcome_banner.register.information.two.description"
                            title       = "welcome_banner.register.information.two.title"
                        },
                        {
                            description = "welcome_banner.register.information.three.description"
                            title       = "welcome_banner.register.information.three.title"
                        },
                    ]
                }
                showLeftSideBullets = true
                showLeftSideImage   = true
                showLeftSideLayout  = true
                showLeftSideTitle   = true
            }
        }
    )
    contact_identifiers          = []
    contract_identifiers         = jsonencode(
        [
            {
                name   = "billing_account_number"
                schema = "billing_account"
            },
            {
                name   = "meter_number"
                schema = "meter"
            },
        ]
    )
    design_id                    = "f7a845c1-4ba4-4a49-aff6-c021f3da3a57"
    domain                       = "wilken-portal-sb.ecp.epilot.io"
    email_templates              = {
        confirm_account                   = "b190aaaa-4d68-4cd2-94f7-b73491817bfc"
        confirm_email_update              = "e44fda82-6ecd-4df2-992e-8a99fb187d0d"
        forgot_password                   = "0c89926f-bd69-4fde-96c0-25820a9d52e0"
        invitation                        = "19931563-7929-4d48-82d4-53ed0cd1c511"
        journey_sign_in_one_time_password = "cb9a58d1-7dcd-4733-a269-c2999495670d"
        journey_sign_up                   = "e8e5da84-f50c-40a2-9aea-599f1726f2a7"
        on_doc_upload                     = "4b5575e5-e5ef-4962-b97e-e817d7f68584"
        on_map_a_pending_user             = "bb94203e-5685-4a6a-aa21-4f717ec83b17"
        on_new_quote                      = "08832f65-879f-4de6-8eb9-7f2390468d0e"
        on_workflow_step_assigned         = "91490472-2874-4c9f-8516-fcb92ea42f63"
        verify_code_to_set_password       = "4f5ec1d5-d2ca-4b5b-9400-03e0c0bcbb51"
    }
    enabled                      = true
    entity_actions               = []
    entity_edit_rules            = jsonencode(
        [
            {
                attribute           = "meter_counter"
                cadence_period_type = "days"
                changes_allowed     = 1
                rule_type           = "cadence"
                slug                = "contract"
            },
        ]
    )
    extension_hooks              = jsonencode(
        {
            contractIdentification = {
                app_id       = "bc6ffa8d-db2f-46c1-b6c8-e784b9c1e697"
                extension_id = "a834b85e-e54e-4f52-a950-f2935f2401d3"
                hook_id      = "contractIdentification"
            }
        }
    )
    extensions                   = []
    feature_flags                = jsonencode(
        {
            approvalState                      = true
            dynamicTariff                      = true
            entitySelection                    = true
            externalLinksIcons                 = true
            journeyTriggers                    = true
            portalAnalytics                    = true
            portalSSO                          = true
            portalsAddressesPaymentsTimeSlices = true
            templateVariables                  = true
            useAdvancedMfaOnPortals            = true
        }
    )
    feature_settings             = jsonencode(
        {
            change_due_date   = true
            commodity_billing = true
            new_design        = true
            start_page        = true
        }
    )
    grants                       = jsonencode(
        [
            {
                action   = "entity:*"
                resource = "opportunity*"
            },
            {
                action   = "entity:attribute:*"
                resource = "opportunity:*:*"
            },
            {
                action   = "entity:*"
                resource = "order*"
            },
            {
                action   = "entity:attribute:*"
                resource = "order:*:*"
            },
            {
                action   = "entity:*"
                resource = "contact*"
            },
            {
                action   = "entity:attribute:*"
                resource = "contact:*:*"
            },
            {
                action   = "entity:*"
                resource = "billing_account*"
            },
            {
                action   = "entity:attribute:*"
                resource = "billing_account:*:*"
            },
            {
                action   = "entity:*"
                resource = "contract*"
            },
            {
                action   = "entity:attribute:*"
                resource = "contract:*:*"
            },
            {
                action   = "entity:*"
                resource = "meter*"
            },
            {
                action   = "entity:attribute:*"
                resource = "meter:*:*"
            },
            {
                action   = "entity:*"
                resource = "meter_counter*"
            },
            {
                action   = "entity:attribute:*"
                resource = "meter_counter:*:*"
            },
            {
                action   = "meter_reading:create"
                resource = "*"
            },
            {
                action   = "meter_reading:edit"
                resource = "*"
            },
            {
                action   = "meter_reading:view"
                resource = "*"
            },
            {
                action   = "entity:view"
                resource = "file*"
            },
            {
                action   = "entity:attribute:*"
                resource = "file:view:*"
            },
            {
                action   = "entity:delete"
                resource = "file*"
            },
            {
                action   = "entity:attribute:*"
                resource = "file:delete:*"
            },
            {
                action   = "entity:create"
                resource = "file*"
            },
            {
                action   = "entity:attribute:*"
                resource = "file:create:*"
            },
            {
                action   = "entity:view"
                resource = "billing_event:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "billing_event:*:*"
            },
            {
                action   = "entity:view"
                resource = "portal_user:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "portal_user:*:*"
            },
            {
                action   = "entity:view"
                resource = "ticket:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "ticket:*:*"
            },
        ]
    )
    images                       = {}
    is_epilot_domain             = true
    is_v3_item                   = false
    meter_reading_grace_period   = 30
    name                         = "Prinzental-Portal"
    organization_id              = "20000388"
    origin                       = "END_CUSTOMER_PORTAL"
    pages                        = jsonencode(
        [
            {
                blocks       = {
                    "1a433808-93c5-4bb9-976e-6ae722a111fe" = {
                        id        = "1a433808-93c5-4bb9-976e-6ae722a111fe"
                        is_system = true
                        order     = 2
                        parentId  = "63688555-47ac-427e-bf92-43acaba71c5a"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "login_form"
                    }
                    "2cbfd7dc-39f3-4430-9243-a78648306a70" = {
                        id        = "2cbfd7dc-39f3-4430-9243-a78648306a70"
                        is_system = true
                        order     = 1
                        parentId  = "63688555-47ac-427e-bf92-43acaba71c5a"
                        props     = {
                            content    = {
                                name  = "anmelden"
                                title = {
                                    de = "Anmelden"
                                    en = "Sign In"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    "5f4ebf58-f7ba-4c71-b1c8-f0f71ead0650" = {
                        id        = "5f4ebf58-f7ba-4c71-b1c8-f0f71ead0650"
                        isSystem  = true
                        is_system = true
                        order     = 3
                        parentId  = "63688555-47ac-427e-bf92-43acaba71c5a"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "79eceb2f-4f30-4010-aa88-5c71ca822ad6" = {
                        id        = "79eceb2f-4f30-4010-aa88-5c71ca822ad6"
                        is_system = true
                        order     = 1
                        parentId  = "63688555-47ac-427e-bf92-43acaba71c5a"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    "9a7259f4-ef03-4abe-ae63-891c58ea209c" = {
                        id        = "9a7259f4-ef03-4abe-ae63-891c58ea209c"
                        is_system = true
                        order     = 4
                        parentId  = "63688555-47ac-427e-bf92-43acaba71c5a"
                        props     = {
                            content    = {
                                valueJson = {
                                    de = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Noch kein Konto? "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                children  = [
                                                                    {
                                                                        detail  = 0
                                                                        format  = 0
                                                                        mode    = "normal"
                                                                        style   = ""
                                                                        text    = "Jetzt registrieren"
                                                                        type    = "text"
                                                                        version = 1
                                                                    },
                                                                ]
                                                                direction = "ltr"
                                                                format    = ""
                                                                indent    = 0
                                                                rel       = "noreferrer"
                                                                target    = "_self"
                                                                title     = [90mnull[0m[0m
                                                                type      = "link"
                                                                url       = "/register"
                                                                version   = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                    en = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Not registered? Please "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                children  = [
                                                                    {
                                                                        detail  = 0
                                                                        format  = 0
                                                                        mode    = "normal"
                                                                        style   = ""
                                                                        text    = "register here"
                                                                        type    = "text"
                                                                        version = 1
                                                                    },
                                                                ]
                                                                direction = "ltr"
                                                                format    = ""
                                                                indent    = 0
                                                                rel       = "noreferrer"
                                                                target    = "_self"
                                                                title     = [90mnull[0m[0m
                                                                type      = "link"
                                                                url       = "/register"
                                                                version   = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "text"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Anmelden"
                        en = "Login"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "63688555-47ac-427e-bf92-43acaba71c5a"
                is_public    = true
                is_system    = true
                order        = 1
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#login"
                slug         = "login"
                visibility   = {}
            },
            {
                blocks       = {
                    "3a6fa05b-16c5-4bcc-9d6e-b026e9f42311" = {
                        id        = "3a6fa05b-16c5-4bcc-9d6e-b026e9f42311"
                        is_system = true
                        order     = 4
                        parentId  = "3db70a51-79bf-4343-ad4b-5a6109f19eef"
                        props     = {
                            content    = {
                                valueJson = {
                                    de = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Schon ein Konto? "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                children  = [
                                                                    {
                                                                        detail  = 0
                                                                        format  = 0
                                                                        mode    = "normal"
                                                                        style   = ""
                                                                        text    = "Jetzt einloggen"
                                                                        type    = "text"
                                                                        version = 1
                                                                    },
                                                                ]
                                                                direction = "ltr"
                                                                format    = ""
                                                                indent    = 0
                                                                rel       = "noreferrer"
                                                                target    = "_self"
                                                                title     = [90mnull[0m[0m
                                                                type      = "link"
                                                                url       = "/login"
                                                                version   = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                    en = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Do you already have an account? "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                children  = [
                                                                    {
                                                                        detail  = 0
                                                                        format  = 0
                                                                        mode    = "normal"
                                                                        style   = ""
                                                                        text    = "Please sign in here"
                                                                        type    = "text"
                                                                        version = 1
                                                                    },
                                                                ]
                                                                direction = "ltr"
                                                                format    = ""
                                                                indent    = 0
                                                                rel       = "noreferrer"
                                                                target    = "_self"
                                                                title     = [90mnull[0m[0m
                                                                type      = "link"
                                                                url       = "/login"
                                                                version   = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "text"
                    }
                    b88844f3-d6ca-4e38-9b6a-19e91d34aa3e   = {
                        id        = "b88844f3-d6ca-4e38-9b6a-19e91d34aa3e"
                        is_system = true
                        order     = 3
                        parentId  = "3db70a51-79bf-4343-ad4b-5a6109f19eef"
                        props     = {
                            content    = {
                                valueJson = {
                                    de = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Mit dem Klick auf “"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 1
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Registrieren"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "” stimmen Sie unseren "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 1
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Nutzungsbedingungen"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = " und unserer "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 1
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Datenschutzrichtlinie"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = " zu."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                    en = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "By clicking on “"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 1
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Register"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "” you agree to ours\u00a0"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 1
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Terms of Use"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = " and "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 1
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Privacy Policy"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "registration_form"
                    }
                    b95433d2-cb44-4fea-8758-168a73fc913f   = {
                        id        = "b95433d2-cb44-4fea-8758-168a73fc913f"
                        is_system = true
                        order     = 1
                        parentId  = "3db70a51-79bf-4343-ad4b-5a6109f19eef"
                        props     = {
                            content    = {
                                name  = "registrieren"
                                title = {
                                    de = "Registrieren"
                                    en = "Register"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    e60be348-d83f-4ea0-ab51-436d7ded2459   = {
                        id        = "e60be348-d83f-4ea0-ab51-436d7ded2459"
                        is_system = true
                        order     = 2
                        parentId  = "3db70a51-79bf-4343-ad4b-5a6109f19eef"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    ffdbbdfc-c961-4b2c-b0af-943cae7f1874   = {
                        id        = "ffdbbdfc-c961-4b2c-b0af-943cae7f1874"
                        isSystem  = true
                        is_system = true
                        order     = 5
                        parentId  = "3db70a51-79bf-4343-ad4b-5a6109f19eef"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Registrieren"
                        en = "Register"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "3db70a51-79bf-4343-ad4b-5a6109f19eef"
                is_public    = true
                is_system    = true
                order        = 2
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#register"
                slug         = "register"
                visibility   = {}
            },
            {
                blocks       = {
                    "2f90dd0a-7108-4a2f-95a0-9f5363822119" = {
                        id        = "2f90dd0a-7108-4a2f-95a0-9f5363822119"
                        isSystem  = true
                        is_system = true
                        order     = 1
                        parentId  = "47d320e6-0f02-45eb-8059-1986876cd516"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "5c57215d-81c8-46de-a1ee-3a98a6e6e736" = {
                        id        = "5c57215d-81c8-46de-a1ee-3a98a6e6e736"
                        is_system = true
                        order     = 2
                        parentId  = "47d320e6-0f02-45eb-8059-1986876cd516"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    "5f69c5c3-29c9-4b3c-860c-fc07501a2558" = {
                        id        = "5f69c5c3-29c9-4b3c-860c-fc07501a2558"
                        is_system = true
                        order     = 4
                        parentId  = "47d320e6-0f02-45eb-8059-1986876cd516"
                        props     = {
                            content    = {
                                valueJson = {
                                    de = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Sie erhalten eine E-Mail, sobald Ihr Zugang aktiviert ist."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                    en = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "You will receive an e-mail as soon as your access is activated."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "text"
                    }
                    "81824c6a-0437-410a-88ec-7d72ad6fadbf" = {
                        id        = "81824c6a-0437-410a-88ec-7d72ad6fadbf"
                        is_system = true
                        order     = 5
                        parentId  = "47d320e6-0f02-45eb-8059-1986876cd516"
                        props     = {
                            content    = {
                                link         = "/login"
                                openInNewTab = false
                                text         = {
                                    de = "Anmeldung"
                                    en = "Back to login"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "button_link"
                    }
                    f4dc1fc8-afc9-47d5-b8ea-532a62a3f9c9   = {
                        id        = "f4dc1fc8-afc9-47d5-b8ea-532a62a3f9c9"
                        is_system = true
                        order     = 3
                        parentId  = "47d320e6-0f02-45eb-8059-1986876cd516"
                        props     = {
                            content    = {
                                name  = "ausstehendes_konto"
                                title = {
                                    de = "Ausstehendes Konto"
                                    en = "Your access is pending"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Ausstehendes Konto"
                        en = "Pending account"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "47d320e6-0f02-45eb-8059-1986876cd516"
                is_public    = true
                is_system    = true
                order        = 3
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#pending-account"
                slug         = "pending-account"
                visibility   = {}
            },
            {
                blocks       = {
                    "05d4740f-a6d5-4e62-98b1-4b40a93d1886" = {
                        id        = "05d4740f-a6d5-4e62-98b1-4b40a93d1886"
                        is_system = true
                        order     = 1
                        parentId  = "64186770-9a8a-42c4-9a15-8ddae5d8d13b"
                        props     = {
                            content    = {
                                name  = "passwort_vergessen"
                                title = {
                                    de = "Passwort vergessen"
                                    en = "Forgot Password"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    "23cb1eca-7d31-4a40-a9b3-f52380bf84bf" = {
                        id        = "23cb1eca-7d31-4a40-a9b3-f52380bf84bf"
                        is_system = true
                        order     = 3
                        parentId  = "64186770-9a8a-42c4-9a15-8ddae5d8d13b"
                        props     = {
                            content    = {
                                valueJson = {
                                    de = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                children  = [
                                                                    {
                                                                        detail  = 0
                                                                        format  = 0
                                                                        mode    = "normal"
                                                                        style   = ""
                                                                        text    = "Zurück zur Anmeldung"
                                                                        type    = "text"
                                                                        version = 1
                                                                    },
                                                                ]
                                                                direction = "ltr"
                                                                format    = ""
                                                                indent    = 0
                                                                rel       = "noreferrer"
                                                                target    = "_self"
                                                                title     = [90mnull[0m[0m
                                                                type      = "link"
                                                                url       = "/login"
                                                                version   = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                    en = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                children  = [
                                                                    {
                                                                        detail  = 0
                                                                        format  = 0
                                                                        mode    = "normal"
                                                                        style   = ""
                                                                        text    = "Back to login"
                                                                        type    = "text"
                                                                        version = 1
                                                                    },
                                                                ]
                                                                direction = "ltr"
                                                                format    = ""
                                                                indent    = 0
                                                                rel       = "noreferrer"
                                                                target    = "_self"
                                                                title     = [90mnull[0m[0m
                                                                type      = "link"
                                                                url       = "/login"
                                                                version   = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "text"
                    }
                    "57afe1b7-5c23-4f73-ad0c-03aa03c671fd" = {
                        id        = "57afe1b7-5c23-4f73-ad0c-03aa03c671fd"
                        isSystem  = true
                        is_system = true
                        order     = 2
                        parentId  = "64186770-9a8a-42c4-9a15-8ddae5d8d13b"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "6313008d-d2f5-4639-b146-2cd0c5eeace8" = {
                        id        = "6313008d-d2f5-4639-b146-2cd0c5eeace8"
                        is_system = true
                        order     = 2
                        parentId  = "64186770-9a8a-42c4-9a15-8ddae5d8d13b"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "forgot_password_form"
                    }
                    "941f40f6-f072-41f6-bacf-5841d828c631" = {
                        id        = "941f40f6-f072-41f6-bacf-5841d828c631"
                        is_system = true
                        order     = 1
                        parentId  = "64186770-9a8a-42c4-9a15-8ddae5d8d13b"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Passwort vergessen"
                        en = "Forgot password"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "64186770-9a8a-42c4-9a15-8ddae5d8d13b"
                is_public    = true
                is_system    = true
                order        = 4
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#forgot-password"
                slug         = "forgot-password"
                visibility   = {}
            },
            {
                blocks       = {
                    "717f2436-d899-46af-963a-e4e6ed5669da" = {
                        id        = "717f2436-d899-46af-963a-e4e6ed5669da"
                        isSystem  = true
                        is_system = true
                        order     = 1
                        parentId  = "ffef4032-6839-4356-b625-3a63ad2148ef"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "952a7bb4-6cc7-4491-85f8-5ab315682576" = {
                        id        = "952a7bb4-6cc7-4491-85f8-5ab315682576"
                        is_system = true
                        order     = 3
                        parentId  = "ffef4032-6839-4356-b625-3a63ad2148ef"
                        props     = {
                            content    = {
                                name  = "aktivierungslink_gesendet"
                                title = {
                                    de = "E-Mail Adresse bestätigen"
                                    en = "Activation link sent"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    baf6041f-77db-4f7b-94d8-688b01dd0ec0   = {
                        id        = "baf6041f-77db-4f7b-94d8-688b01dd0ec0"
                        is_system = true
                        order     = 2
                        parentId  = "ffef4032-6839-4356-b625-3a63ad2148ef"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    f89e774a-c8c6-40e4-8ff8-f83afa004551   = {
                        id        = "f89e774a-c8c6-40e4-8ff8-f83afa004551"
                        is_system = true
                        order     = 4
                        parentId  = "ffef4032-6839-4356-b625-3a63ad2148ef"
                        props     = {
                            content    = {
                                valueJson = {
                                    de = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Wir haben dir soeben einen Aktivierungslink an deine E-Mail-Adresse gesendet. "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Klicke auf den "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 1
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Link in der E-Mail"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = ", um dein Konto zu aktivieren."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                    en = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "We have just successfully sent you an activation link to your email address. "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Click the link in the email to activate your account."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "text"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Aktivierung registrieren"
                        en = "Register activation"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "ffef4032-6839-4356-b625-3a63ad2148ef"
                is_public    = true
                is_system    = true
                order        = 4
                org_id       = "20000388"
                parentId     = "3db70a51-79bf-4343-ad4b-5a6109f19eef"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#activation"
                slug         = "activation"
                visibility   = {}
            },
            {
                blocks       = {
                    "07e57cb5-e89c-4f7d-8605-1e0230287de8" = {
                        id        = "07e57cb5-e89c-4f7d-8605-1e0230287de8"
                        is_system = true
                        order     = 2
                        parentId  = "1a853be8-8c73-4b9d-84da-848a9351ab7d"
                        props     = {
                            content    = {
                                name  = "set-new-password"
                                title = {
                                    de = "Lege ein neues Passwort fest, um die Einrichtung abzuschließen"
                                    en = "Set the new password to finish the setup"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    "0b9bf0c2-6661-4a8a-a3d6-6f5770148f7d" = {
                        id        = "0b9bf0c2-6661-4a8a-a3d6-6f5770148f7d"
                        is_system = true
                        order     = 1
                        parentId  = "1a853be8-8c73-4b9d-84da-848a9351ab7d"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    a5c3f481-a530-4a81-905d-f0f1781c55b4   = {
                        id        = "a5c3f481-a530-4a81-905d-f0f1781c55b4"
                        isSystem  = true
                        is_system = true
                        order     = 3
                        parentId  = "1a853be8-8c73-4b9d-84da-848a9351ab7d"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    de4fecb7-0720-4182-8176-1289748d8558   = {
                        id        = "de4fecb7-0720-4182-8176-1289748d8558"
                        is_system = true
                        order     = 4
                        parentId  = "1a853be8-8c73-4b9d-84da-848a9351ab7d"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "set_password_new_email_form"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Neue E-Mail"
                        en = "New email"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "1a853be8-8c73-4b9d-84da-848a9351ab7d"
                is_public    = true
                is_system    = true
                order        = 5
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#new-email"
                slug         = "new-email"
                visibility   = {}
            },
            {
                blocks       = {
                    "017901cf-7c83-48d2-b55d-bcaeeb947996" = {
                        id        = "017901cf-7c83-48d2-b55d-bcaeeb947996"
                        is_system = true
                        order     = 3
                        parentId  = "acc7f964-0bf1-41d3-b75b-dfba285a11c3"
                        props     = {
                            content    = {
                                name  = "account_activated_successfully"
                                title = {
                                    de = "Konto erfolgreich aktiviert"
                                    en = "Account activated successfully"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    "4f6fd944-bb3c-4ed8-a72e-ae3d93c56ffe" = {
                        id        = "4f6fd944-bb3c-4ed8-a72e-ae3d93c56ffe"
                        is_system = true
                        order     = 5
                        parentId  = "acc7f964-0bf1-41d3-b75b-dfba285a11c3"
                        props     = {
                            content    = {
                                link         = "/login"
                                openInNewTab = false
                                text         = {
                                    de = "Anmeldung"
                                    en = "Login"
                                }
                                type         = "external"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "button_link"
                    }
                    a28b1261-22ae-4310-9289-3af0ff924650   = {
                        id        = "a28b1261-22ae-4310-9289-3af0ff924650"
                        is_system = true
                        order     = 4
                        parentId  = "acc7f964-0bf1-41d3-b75b-dfba285a11c3"
                        props     = {
                            content    = {
                                valueJson = {
                                    de = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Wir haben dein Konto soeben erfolgreich aktiviert. "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Du kannst dich jetzt einfach mit deiner E-Mail-Adresse und deinem Passwort einloggen."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                    en = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "We have just successfully activated your account with the email."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "You can now simply log in with your email address and password."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "text"
                    }
                    dad8e501-abe5-4319-a81b-6458df626eff   = {
                        id        = "dad8e501-abe5-4319-a81b-6458df626eff"
                        is_system = true
                        order     = 2
                        parentId  = "acc7f964-0bf1-41d3-b75b-dfba285a11c3"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    e23c186d-cea0-47a4-9f7c-7856fc7248ea   = {
                        id        = "e23c186d-cea0-47a4-9f7c-7856fc7248ea"
                        isSystem  = true
                        is_system = true
                        order     = 1
                        parentId  = "acc7f964-0bf1-41d3-b75b-dfba285a11c3"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Registrierung erfolgreich"
                        en = "Register success"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "acc7f964-0bf1-41d3-b75b-dfba285a11c3"
                is_public    = true
                is_system    = true
                order        = 5
                org_id       = "20000388"
                parentId     = "3db70a51-79bf-4343-ad4b-5a6109f19eef"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#success"
                slug         = "success"
                visibility   = {}
            },
            {
                blocks       = {
                    "4ad20d24-7f59-4062-8fce-9c9dcdec2713" = {
                        id        = "4ad20d24-7f59-4062-8fce-9c9dcdec2713"
                        isSystem  = true
                        is_system = true
                        order     = 5
                        parentId  = "ff2c681d-8084-4e0b-8c95-62c685a4d3b0"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "51864e73-08e3-4b81-afe4-4b7a405a2f66" = {
                        id        = "51864e73-08e3-4b81-afe4-4b7a405a2f66"
                        is_system = true
                        order     = 2
                        parentId  = "ff2c681d-8084-4e0b-8c95-62c685a4d3b0"
                        props     = {
                            content    = {
                                name  = "complete_email_confirmation"
                                title = {
                                    de = "E-Mail-Bestätigung abschließen"
                                    en = "Complete email confirmation"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    bfe1251d-59ab-46f1-95d3-00aa1ab399ef   = {
                        id        = "bfe1251d-59ab-46f1-95d3-00aa1ab399ef"
                        is_system = true
                        order     = 4
                        parentId  = "ff2c681d-8084-4e0b-8c95-62c685a4d3b0"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "confirm_email_form"
                    }
                    cb73f30f-99f8-4e1e-ba24-2c975ff7d75b   = {
                        id        = "cb73f30f-99f8-4e1e-ba24-2c975ff7d75b"
                        is_system = true
                        order     = 3
                        parentId  = "ff2c681d-8084-4e0b-8c95-62c685a4d3b0"
                        props     = {
                            content    = {
                                valueJson = {
                                    de = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Ein weiterer Klick, um die Bestätigung Ihrer E-Mail-Adresse abzuschließen."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                    en = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "One more click to complete confirmation of your email address."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "text"
                    }
                    ee6799bf-1d1c-4f87-929b-5734b69ec72c   = {
                        id        = "ee6799bf-1d1c-4f87-929b-5734b69ec72c"
                        is_system = true
                        order     = 1
                        parentId  = "ff2c681d-8084-4e0b-8c95-62c685a4d3b0"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "E-Mail bestätigen"
                        en = "Confirm email"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "ff2c681d-8084-4e0b-8c95-62c685a4d3b0"
                is_public    = true
                is_system    = true
                order        = 6
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#confirm-email"
                slug         = "confirm-email"
                visibility   = {}
            },
            {
                blocks       = {
                    "12766ffd-0cec-48c2-9c7a-bd273bad7b80" = {
                        id        = "12766ffd-0cec-48c2-9c7a-bd273bad7b80"
                        is_system = true
                        order     = 4
                        parentId  = "1a80b726-6bc9-47ee-94a1-7e81eebc41f9"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "forgot_password_change_form"
                    }
                    "2c54c848-2dbd-46be-adc5-51165edb4b32" = {
                        id        = "2c54c848-2dbd-46be-adc5-51165edb4b32"
                        is_system = true
                        order     = 1
                        parentId  = "1a80b726-6bc9-47ee-94a1-7e81eebc41f9"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    "8e6467a9-051f-4a4a-a920-1d2722b83aab" = {
                        id        = "8e6467a9-051f-4a4a-a920-1d2722b83aab"
                        isSystem  = true
                        is_system = true
                        order     = 3
                        parentId  = "1a80b726-6bc9-47ee-94a1-7e81eebc41f9"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    b356fe8d-2ada-488b-b03c-8200ba1a9890   = {
                        id        = "b356fe8d-2ada-488b-b03c-8200ba1a9890"
                        is_system = true
                        order     = 2
                        parentId  = "1a80b726-6bc9-47ee-94a1-7e81eebc41f9"
                        props     = {
                            content    = {
                                name  = "passwort_andern"
                                title = {
                                    de = "Passwort ändern"
                                    en = "Change password"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Passwort ändern"
                        en = "Change password"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "1a80b726-6bc9-47ee-94a1-7e81eebc41f9"
                is_public    = true
                is_system    = true
                order        = 7
                org_id       = "20000388"
                parentId     = "64186770-9a8a-42c4-9a15-8ddae5d8d13b"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#change"
                slug         = "change"
                visibility   = {}
            },
            {
                blocks       = {
                    "03ee465b-1e74-477b-b931-4bb7b2e657d0" = {
                        id        = "03ee465b-1e74-477b-b931-4bb7b2e657d0"
                        is_system = true
                        order     = 3
                        parentId  = "c403ed15-7751-4cdb-ae57-cd4ef4800289"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "system_banner"
                    }
                    "14e2c737-2665-4a37-9993-80cba3e9d81b" = {
                        id        = "14e2c737-2665-4a37-9993-80cba3e9d81b"
                        is_system = true
                        order     = 2
                        parentId  = "c403ed15-7751-4cdb-ae57-cd4ef4800289"
                        props     = {
                            content    = {
                                valueJson = {
                                    de = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Unser Kundenportal ist derzeit wegen Wartungsarbeiten offline. Wir bemühen uns, den Zugang so schnell wie möglich wiederherzustellen."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Versuch es in Kürze noch einmal - wir entschuldigen uns für die Unannehmlichkeiten!"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                    en = jsonencode(
                                        {
                                            root = {
                                                children  = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Our customer portal is currently offline for maintenance. We are working to restore access as soon as possible."
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "Please try again shortly – we apologize for the inconvenience!"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 0
                                                        textStyle  = ""
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction = "ltr"
                                                format    = ""
                                                indent    = 0
                                                type      = "root"
                                                version   = 1
                                            }
                                        }
                                    )
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "text"
                    }
                    "27457d54-e742-42bc-bc26-75433cfda4fd" = {
                        id        = "27457d54-e742-42bc-bc26-75433cfda4fd"
                        is_system = true
                        order     = 1
                        parentId  = "c403ed15-7751-4cdb-ae57-cd4ef4800289"
                        props     = {
                            content    = {
                                name  = "the_customer_portal_is_being_maintained"
                                title = {
                                    de = "Das Kundenportal wird gewartet."
                                    en = "The customer portal is being maintained."
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    "3ad79f31-eb82-43fd-8171-0f372d73d7a9" = {
                        id        = "3ad79f31-eb82-43fd-8171-0f372d73d7a9"
                        is_system = true
                        order     = 1
                        parentId  = "c403ed15-7751-4cdb-ae57-cd4ef4800289"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    "52d75caf-d72a-4fba-8043-f482653a745b" = {
                        id        = "52d75caf-d72a-4fba-8043-f482653a745b"
                        is_system = true
                        order     = 1
                        parentId  = "03ee465b-1e74-477b-b931-4bb7b2e657d0"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "system_banner_content"
                    }
                    d2b5a373-ba40-4e73-a6c6-95ed3284e83e   = {
                        id        = "d2b5a373-ba40-4e73-a6c6-95ed3284e83e"
                        isSystem  = true
                        is_system = true
                        order     = 3
                        parentId  = "c403ed15-7751-4cdb-ae57-cd4ef4800289"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                }
                content      = {
                    end_date     = [90mnull[0m[0m
                    favicon      = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    has_end_date = false
                    label        = {
                        de = "Wartungsseite"
                        en = "Maintenance"
                    }
                    logoImage    = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                    start_date   = [90mnull[0m[0m
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "c403ed15-7751-4cdb-ae57-cd4ef4800289"
                is_public    = true
                is_system    = true
                order        = 7
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#maintenance"
                slug         = "maintenance"
                visibility   = {}
            },
            {
                blocks       = {
                    "0d85fbc9-bcee-4a59-afc6-95a0da873edd" = {
                        id        = "0d85fbc9-bcee-4a59-afc6-95a0da873edd"
                        is_system = false
                        order     = 7
                        parentId  = "c386d937-70e2-4cae-8736-443149d53736"
                        props     = {
                            content    = {
                                content_bottom_name = {
                                    de = "{{contract.delivery_address[Primary]}}"
                                    en = "{{contract.delivery_address[Primary]}}"
                                }
                                content_top_name    = {
                                    de = "{{contract.branch}}"
                                    en = "{{contract.branch}}"
                                }
                                enable_search       = true
                                entity_title        = {
                                    de = "{{contract._title}}"
                                    en = "{{contract._title}}"
                                }
                                group_by            = "billing_account.billing_account_number"
                                group_by_order_by   = "asc"
                                group_title         = {
                                    de = "{{contract.billing_account.0._title}}"
                                }
                                main_content_name   = {
                                    de = "{{contract._title}}"
                                    en = "{{contract._title}}"
                                }
                                schema              = "contract"
                                search_fields       = [
                                    "contract_number",
                                    "branch",
                                    "delivery_address.full_address",
                                ]
                                search_fields_keys  = [
                                    "contract::contract_number",
                                    "contract::branch",
                                    "contract::delivery_address::address::full_address",
                                ]
                                title               = {
                                    de = "Ihr ausgewählter Vertrag:"
                                }
                            }
                            design     = {
                                hide_inactive_entities = false
                            }
                            visibility = {
                                hidden_for_targets = [
                                    "78f61297-ea5b-47a7-bb9e-4c9d3dae1749",
                                ]
                            }
                        }
                        section   = "header"
                        type      = "entity_selector"
                    }
                    "2e8a7834-e6c1-4797-81dd-539b8503ab40" = {
                        id        = "2e8a7834-e6c1-4797-81dd-539b8503ab40"
                        is_system = false
                        order     = 3
                        parentId  = "c386d937-70e2-4cae-8736-443149d53736"
                        props     = {
                            content    = {
                                action               = "link"
                                button_label         = {
                                    de = "Hier entdecken!"
                                    en = "Button"
                                }
                                button_link          = "https://www.wilken.de/"
                                link                 = "https://www.wilken.de/"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Profitieren Sie von exklusiven Angeboten unserer regionalen Partner!"
                                    en = [90mnull[0m[0m
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Die Prinzental-Vorteilswelt entdecken!"
                                    en = "Title"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "teaser"
                    }
                    "4a24d81b-cca8-4c45-a9cb-835a93c584ed" = {
                        id        = "4a24d81b-cca8-4c45-a9cb-835a93c584ed"
                        is_system = false
                        order     = 1
                        parentId  = "820a56d0-3034-4c4b-bf18-e0a9926de45a"
                        props     = {
                            content    = {
                                action               = "portal_functionality"
                                icon_name            = "contract"
                                link                 = [90mnull[0m[0m
                                linkType             = "external"
                                portal_functionality = "add_contract"
                                subtitle             = {
                                    de = "Möchten Sie bestehende Verträge zu Ihrem Portal hinzufügen?"
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Bestehenden Vertrag hinzufügen"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "lg"
                            }
                            visibility = {
                                visible_for_targets = [
                                    "78f61297-ea5b-47a7-bb9e-4c9d3dae1749",
                                ]
                            }
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    "820a56d0-3034-4c4b-bf18-e0a9926de45a" = {
                        id        = "820a56d0-3034-4c4b-bf18-e0a9926de45a"
                        is_system = false
                        order     = 2
                        parentId  = "c386d937-70e2-4cae-8736-443149d53736"
                        props     = {
                            content    = {
                                title = {
                                    en = "Quick actions"
                                }
                            }
                            design     = {
                                layout      = "stacked"
                                theme_style = "soft"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_actions"
                    }
                    b681773c-f395-4f35-97ba-9d2cd0ce95d2   = {
                        id        = "b681773c-f395-4f35-97ba-9d2cd0ce95d2"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "c386d937-70e2-4cae-8736-443149d53736"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    be0e3c05-e036-4a55-96c8-588524cbc728   = {
                        id        = "be0e3c05-e036-4a55-96c8-588524cbc728"
                        is_system = false
                        order     = 5
                        parentId  = "c386d937-70e2-4cae-8736-443149d53736"
                        props     = {
                            content    = {
                                action               = "journey"
                                button_label         = {
                                    de = "Tarifrechner öffnen"
                                    en = "Button"
                                }
                                button_link          = "ea2ffd20-cb6e-11f0-801e-750e61366dd4"
                                link                 = "ea2ffd20-cb6e-11f0-801e-750e61366dd4"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Sichern Sie sich jetzt Ihr Angebot für einen Stromtarif."
                                    en = [90mnull[0m[0m
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Stromtarif sichern!"
                                    en = "Title"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "teaser"
                    }
                    ecaa00b8-3c13-4ee4-8f1c-a3c08308c988   = {
                        id        = "ecaa00b8-3c13-4ee4-8f1c-a3c08308c988"
                        is_system = false
                        order     = 4
                        parentId  = "c386d937-70e2-4cae-8736-443149d53736"
                        props     = {
                            content    = {
                                action               = "link"
                                button_label         = {
                                    de = "Zu meinen Energieverträgen"
                                    en = "Button"
                                }
                                button_link          = "/vertragsubersicht"
                                link                 = "/vertragsubersicht"
                                linkType             = "internal"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Online-Kundenservice für Ihre Vertragsdaten und Energie"
                                    en = [90mnull[0m[0m
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Energieverträge"
                                    en = "Title"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "teaser"
                    }
                    f2e8b9cf-15a0-4f06-80f5-905c10ff2999   = {
                        id       = "f2e8b9cf-15a0-4f06-80f5-905c10ff2999"
                        order    = 1
                        parentId = "c386d937-70e2-4cae-8736-443149d53736"
                        props    = {
                            content    = {
                                name  = "dashboard"
                                title = {
                                    de = "Übersicht"
                                    en = "Dashboard"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Startseite"
                        en = "Overview"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "c386d937-70e2-4cae-8736-443149d53736"
                is_system    = true
                order        = 8
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#dashboard"
                schema       = [
                    "contact",
                    "contract",
                ]
                slug         = "dashboard"
                visibility   = {
                    is_hidden = false
                }
            },
            {
                blocks       = {
                    "8a021e0e-a106-4274-896d-2b1c2d304b85" = {
                        id       = "8a021e0e-a106-4274-896d-2b1c2d304b85"
                        order    = 1
                        parentId = "c97527d9-b9ae-450e-a33e-096f1856a018"
                        props    = {
                            content    = {
                                name  = "requests"
                                title = {
                                    de = "Anfragen & Bestellungen"
                                    en = "Requests"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                    "912e6996-c2b7-45b9-bf50-41edbd53e460" = {
                        id        = "912e6996-c2b7-45b9-bf50-41edbd53e460"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "c97527d9-b9ae-450e-a33e-096f1856a018"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "938ba597-fe03-4961-a965-653a3a06aeec" = {
                        id       = "938ba597-fe03-4961-a965-653a3a06aeec"
                        order    = 2
                        parentId = "c97527d9-b9ae-450e-a33e-096f1856a018"
                        props    = {
                            content    = {
                                enable_search           = true
                                group_by_order_by       = "desc"
                                opportunity_bottom_name = {
                                    de = "{{opportunity.status}}"
                                    en = "{{opportunity.status}}"
                                }
                                opportunity_main_name   = {
                                    de = "{{opportunity._title}}"
                                    en = "{{opportunity._title}}"
                                }
                                order_bottom_name       = {
                                    de = "{{order.status}}"
                                    en = "{{order.status}}"
                                }
                                order_main_name         = {
                                    de = "{{order.order_number}}"
                                    en = "{{order.order_number}}"
                                }
                                schema                  = "contact"
                                search_fields           = [
                                    "order_number",
                                    "status",
                                ]
                                search_fields_keys      = [
                                    "order::order_number",
                                    "order::status",
                                ]
                                title                   = {
                                    de = "Aktionen"
                                    en = "Actions"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "requests"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Anfragen & Bestellungen"
                        en = "Requests"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "c97527d9-b9ae-450e-a33e-096f1856a018"
                is_system    = true
                order        = 9
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#requests"
                schema       = [
                    "contact",
                ]
                slug         = "requests"
                visibility   = {}
            },
            {
                blocks       = {
                    "1e068f93-c64a-4161-b592-e31f6511e314" = {
                        id        = "1e068f93-c64a-4161-b592-e31f6511e314"
                        is_system = false
                        order     = 3
                        parentId  = "2902dda1-0a29-41f6-a7ed-7f4e8aea1f1c"
                        props     = {
                            content    = {
                                content_bottom_name = {
                                    de = "{{contract.delivery_address[Primary]}}"
                                }
                                content_top_name    = {
                                    de = "{{contract.branch}}"
                                }
                                enable_search       = true
                                group_by            = "billing_account.billing_account_number"
                                group_by_order_by   = "asc"
                                group_title         = {
                                    de = "{{contract.customer.0._title}} - Kundenkonto: {{contract.billing_account.0.billing_account_number}}"
                                }
                                main_content_name   = {
                                    de = "{{contract.contract_name}}"
                                    en = "{{contract._title}}"
                                }
                                schema              = "contract"
                                search_fields       = [
                                    "_title",
                                    "point_of_consumption_reference",
                                    "account_number",
                                ]
                                search_fields_keys  = [
                                    "contract::_title",
                                    "contract::point_of_consumption_reference",
                                    "contract::account_number",
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "entity_list"
                    }
                    "4df67c3d-7c03-4865-b2f6-7b1640e87456" = {
                        id        = "4df67c3d-7c03-4865-b2f6-7b1640e87456"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "2902dda1-0a29-41f6-a7ed-7f4e8aea1f1c"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "556fb4ba-529a-400e-82bf-d309d5e5d78e" = {
                        id        = "556fb4ba-529a-400e-82bf-d309d5e5d78e"
                        is_system = false
                        order     = 1
                        parentId  = "cbc5b1ab-2c17-4af3-b494-638f186d482e"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = "contract_id"
                                        value = "{{contract._id}}"
                                    },
                                    {
                                        key   = "billing_account_id"
                                        value = "{{contract.billing_account.0._id}}"
                                    },
                                ]
                                icon_name            = "calculate"
                                link                 = "729961e0-cc75-11f0-9161-17f199381123"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Fordern Sie mit wenigen Klicks eine individuelle Simulationsrechnung für Ihre Kundenkonten an."
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Anfrage Simulationsrechnung"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    "76ffc6e9-15d7-4dcc-b881-4184cf055c6d" = {
                        id        = "76ffc6e9-15d7-4dcc-b881-4184cf055c6d"
                        is_system = false
                        order     = 2
                        parentId  = "2902dda1-0a29-41f6-a7ed-7f4e8aea1f1c"
                        props     = {
                            content    = {
                                hideTitle = true
                                title     = {
                                    de = "Schnellaktionen"
                                    en = "Quick actions"
                                }
                            }
                            design     = {
                                layout      = "grid"
                                theme_style = "soft"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_actions"
                    }
                    aadc03d1-1d3b-498e-a27f-b624e54045e4   = {
                        id        = "aadc03d1-1d3b-498e-a27f-b624e54045e4"
                        is_system = false
                        order     = 1
                        parentId  = "2902dda1-0a29-41f6-a7ed-7f4e8aea1f1c"
                        props     = {
                            content    = {
                                title = {
                                    de = "Mein Kundenkonto"
                                    en = "Title"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    b2f88210-37d5-485a-808f-02481b793b90   = {
                        id        = "b2f88210-37d5-485a-808f-02481b793b90"
                        is_system = false
                        order     = 1
                        parentId  = "76ffc6e9-15d7-4dcc-b881-4184cf055c6d"
                        props     = {
                            content    = {
                                action               = "portal_functionality"
                                icon_name            = "add"
                                link                 = [90mnull[0m[0m
                                linkType             = "external"
                                portal_functionality = "add_contract"
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Kundenkonto hinzufügen"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    cbc5b1ab-2c17-4af3-b494-638f186d482e   = {
                        id        = "cbc5b1ab-2c17-4af3-b494-638f186d482e"
                        is_system = false
                        order     = 4
                        parentId  = "2902dda1-0a29-41f6-a7ed-7f4e8aea1f1c"
                        props     = {
                            content    = {
                                hideTitle = true
                                title     = {
                                    de = "Schnellaktionen"
                                    en = "Quick actions"
                                }
                            }
                            design     = {
                                layout      = "stacked"
                                theme_style = "soft"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_actions"
                    }
                    f9434404-29bf-4050-81a0-2a3de80f9c84   = {
                        id        = "f9434404-29bf-4050-81a0-2a3de80f9c84"
                        is_system = false
                        order     = 2
                        parentId  = "76ffc6e9-15d7-4dcc-b881-4184cf055c6d"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = "profile_contact_id"
                                        value = "{{contact._id}}"
                                    },
                                ]
                                icon_name            = "remove"
                                link                 = "cef424e0-d6a5-11f0-8e72-3dba6f6f0a63"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Kundenkonto entfernen"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Mein Kundenkonto"
                        en = "New Page"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "2902dda1-0a29-41f6-a7ed-7f4e8aea1f1c"
                is_public    = false
                is_system    = false
                order        = 10
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#vertragsubersicht"
                schema       = [
                    "contact",
                ]
                slug         = "vertragsubersicht"
            },
            {
                blocks       = {
                    "03ade19b-8b55-4478-83c5-959dfeb0d371" = {
                        id       = "03ade19b-8b55-4478-83c5-959dfeb0d371"
                        order    = 6
                        parentId = "118ca562-73b0-4ed4-871c-8d1dff536529"
                        props    = {
                            content    = {
                                label = {
                                    de = "Adressen"
                                    en = "Address"
                                }
                                name  = "adress"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    "0fea890b-5aaa-4cdb-a057-3b4605db3763" = {
                        id        = "0fea890b-5aaa-4cdb-a057-3b4605db3763"
                        is_system = false
                        order     = 6
                        parentId  = "a51f36c9-0465-4346-be39-e538d0825437"
                        props     = {
                            content    = {
                                hideTitle = true
                                title     = {
                                    de = "Änderung Abschlagsbetrag"
                                    en = "Quick actions"
                                }
                            }
                            design     = {
                                layout      = "stacked"
                                theme_style = "soft"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_actions"
                    }
                    "118ca562-73b0-4ed4-871c-8d1dff536529" = {
                        id       = "118ca562-73b0-4ed4-871c-8d1dff536529"
                        order    = 1
                        parentId = "195e9506-8524-4ddb-a255-fdfd24d5836a"
                        props    = {
                            content    = {
                                label = {
                                    de = "Übersicht"
                                    en = "Overview"
                                }
                                name  = "overview"
                            }
                            design     = {}
                            visibility = {
                                hidden_for_targets = [
                                    "78f61297-ea5b-47a7-bb9e-4c9d3dae1749",
                                ]
                            }
                        }
                        section  = "main"
                        type     = "tab"
                    }
                    "11ca41c2-725a-482a-9797-a9ecf85b68e2" = {
                        id        = "11ca41c2-725a-482a-9797-a9ecf85b68e2"
                        is_system = false
                        order     = 4
                        parentId  = "a51f36c9-0465-4346-be39-e538d0825437"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = {
                                    de = "Kündigungsfrist"
                                }
                                name                    = "notice_time_amount"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contract"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "13e46088-4f22-4bd6-848b-025fdcaf5b8a" = {
                        id        = "13e46088-4f22-4bd6-848b-025fdcaf5b8a"
                        is_system = false
                        order     = 2
                        parentId  = "118ca562-73b0-4ed4-871c-8d1dff536529"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = "billing_account_id"
                                        value = [90mnull[0m[0m
                                    },
                                    {
                                        key   = "business_contact_id"
                                        value = [90mnull[0m[0m
                                    },
                                    {
                                        key   = "profile_contact_id"
                                        value = [90mnull[0m[0m
                                    },
                                    {
                                        key   = "profile_contact_email_adresse"
                                        value = [90mnull[0m[0m
                                    },
                                    {
                                        key   = "vertrag_kundenkonto"
                                        value = [90mnull[0m[0m
                                    },
                                    {
                                        key   = "vertrag_vertragstitel"
                                        value = [90mnull[0m[0m
                                    },
                                    {
                                        key   = "vertrag_vertragsnummer"
                                        value = [90mnull[0m[0m
                                    },
                                    {
                                        key   = "vertrag_abnahmestelle"
                                        value = [90mnull[0m[0m
                                    },
                                    {
                                        key   = "vertrag_status"
                                        value = [90mnull[0m[0m
                                    },
                                ]
                                icon_name            = "cancel"
                                link                 = "7302ab00-cc75-11f0-b6e2-4fdb6980a500"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Sie möchten Ihren Vertrag kündigen?"
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Vertrag kündigen"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    "140b1cc1-1f53-46cb-84c6-538250f858b5" = {
                        id        = "140b1cc1-1f53-46cb-84c6-538250f858b5"
                        is_system = false
                        order     = 3
                        parentId  = "a51f36c9-0465-4346-be39-e538d0825437"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = {
                                    de = "Verlängerung"
                                }
                                name                    = "renewal_duration_amount"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contract"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "1956fdf8-d89f-4df4-b66a-60234e7af2a3" = {
                        id       = "1956fdf8-d89f-4df4-b66a-60234e7af2a3"
                        order    = 8
                        parentId = "118ca562-73b0-4ed4-871c-8d1dff536529"
                        props    = {
                            content    = {
                                label = {
                                    de = "Geschäftspartner"
                                    en = "Contacts"
                                }
                                name  = "contacts"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    "195e9506-8524-4ddb-a255-fdfd24d5836a" = {
                        id              = "195e9506-8524-4ddb-a255-fdfd24d5836a"
                        order           = 3
                        parentId        = "a192edbe-fc69-45d3-82c0-81c9e0a98c6a"
                        props           = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section         = "main"
                        top_level_block = true
                        type            = "tabs"
                    }
                    "36aa5630-3bad-4494-9573-1078e083e9c6" = {
                        id        = "36aa5630-3bad-4494-9573-1078e083e9c6"
                        is_system = false
                        order     = 1
                        parentId  = "96c65a29-b376-42ec-8dd9-acb2f46f2317"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = "billing_account_id"
                                        value = "{{contract.billing_account.0._id}}"
                                    },
                                    {
                                        key   = "business_contact_id"
                                        value = "{{contract.customer.0._id}}"
                                    },
                                    {
                                        key   = "profile_contact_id"
                                        value = "{{contact._id}}"
                                    },
                                    {
                                        key   = "vertrag_kundenkonto"
                                        value = "{{contract.billing_account.0._title}}"
                                    },
                                ]
                                icon_name            = "add_location_alt"
                                link                 = "b2448e50-b98d-11f0-922f-33c1b43b3972"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "In wenigen Klicks die Rechnungsadresse Ihres Kundenkontos anpassen. "
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Änderung Rechnungsadresse"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    "4ab277a2-6afa-4b2f-91c5-df2ac252ce23" = {
                        id        = "4ab277a2-6afa-4b2f-91c5-df2ac252ce23"
                        is_system = false
                        order     = 4
                        parentId  = "1956fdf8-d89f-4df4-b66a-60234e7af2a3"
                        props     = {
                            content    = {
                                label = {
                                    de = "Nachname"
                                    en = "Label"
                                }
                                value = {
                                    de = "{{contract.customer.0.last_name}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    "4d5e8067-5092-44ea-b04e-97e91e65e8f1" = {
                        id        = "4d5e8067-5092-44ea-b04e-97e91e65e8f1"
                        is_system = false
                        order     = 5
                        parentId  = "1956fdf8-d89f-4df4-b66a-60234e7af2a3"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Geburtsdatum"
                                    en = "Label"
                                }
                                value          = {
                                    de = "{{contract.customer.0.birthdate}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    "4df8b3f2-acb6-4f42-9c78-3ee24cc42230" = {
                        id       = "4df8b3f2-acb6-4f42-9c78-3ee24cc42230"
                        order    = 1
                        parentId = "a51f36c9-0465-4346-be39-e538d0825437"
                        props    = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = {
                                    de = "Abnahmestelle"
                                }
                                name                    = "delivery_address"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contract"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    "5499d4a7-39f8-4936-b782-3758cb79c46b" = {
                        id        = "5499d4a7-39f8-4936-b782-3758cb79c46b"
                        is_system = false
                        order     = 3
                        parentId  = "df8c3f38-5aeb-4941-83b6-e44c63d4a8a1"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = "billing_account_id"
                                        value = "{{contract.billing_account.0._id}}"
                                    },
                                    {
                                        key   = "business_contact_id"
                                        value = "{{contract.customer.0._id}}"
                                    },
                                    {
                                        key   = "profile_contact_id"
                                        value = "{{contact._id}}"
                                    },
                                    {
                                        key   = "profile_contact_email_adresse"
                                        value = "{{portal_user.email[Primary]}}"
                                    },
                                    {
                                        key   = "vertrag_kundenkonto"
                                        value = "{{contract.billing_account.0._title}}"
                                    },
                                    {
                                        key   = "vertrag_vertragstitel"
                                        value = "{{contract._title}}"
                                    },
                                    {
                                        key   = "vertrag_vertragsnummer"
                                        value = "{{contract.contract_number}}"
                                    },
                                    {
                                        key   = "vertrag_abnahmestelle"
                                        value = "{{contract.delivery_address[Primary]}}"
                                    },
                                    {
                                        key   = "vertrag_status"
                                        value = "{{contract.status}}"
                                    },
                                ]
                                icon_name            = "cancel"
                                link                 = "7302ab00-cc75-11f0-b6e2-4fdb6980a500"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Sie möchten Ihren Vertrag kündigen?"
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Vertrag kündigen"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    "54a981c9-4a73-4ba0-9ada-8d30e3e4a8dd" = {
                        id        = "54a981c9-4a73-4ba0-9ada-8d30e3e4a8dd"
                        is_system = false
                        order     = 7
                        parentId  = "1956fdf8-d89f-4df4-b66a-60234e7af2a3"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Telefonnummer"
                                    en = "Label"
                                }
                                value          = {
                                    de = "{{contract.customer.0.phone.0.phone}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    "5e0bf468-b8fd-4285-aa36-1ba2017479e6" = {
                        id       = "5e0bf468-b8fd-4285-aa36-1ba2017479e6"
                        order    = 5
                        parentId = "195e9506-8524-4ddb-a255-fdfd24d5836a"
                        props    = {
                            content    = {
                                label = {
                                    de = "Dokumente"
                                    en = "Documents"
                                }
                                name  = "dokumente"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tab"
                    }
                    "5ebd8287-06a2-4772-98a6-26d41bd24291" = {
                        id        = "5ebd8287-06a2-4772-98a6-26d41bd24291"
                        is_system = false
                        order     = 1
                        parentId  = "0fea890b-5aaa-4cdb-a057-3b4605db3763"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = [90mnull[0m[0m
                                        value = [90mnull[0m[0m
                                    },
                                    {
                                        key   = "billing_account_id"
                                        value = "{{contract.billing_account.0._id}}"
                                    },
                                    {
                                        key   = "business_contact_id"
                                        value = "{{contract.customer.0._id}}"
                                    },
                                    {
                                        key   = "profile_contact_id"
                                        value = "{{contact._id}}"
                                    },
                                    {
                                        key   = "vertrag_aktueller_abschlag"
                                        value = "{{contract.installment_amount_decimal}}"
                                    },
                                    {
                                        key   = "vertrag_minimaler_abschlag"
                                        value = "{{contract.installment_amount_lowerlimit_decimal}}"
                                    },
                                    {
                                        key   = "vertrag_maximaler_abschlag"
                                        value = "{{contract.installment_amount_upperlimit_decimal}}"
                                    },
                                ]
                                icon_name            = "currency_exchange"
                                link                 = "6fd39d77-aecd-48c8-a9bd-5ce21455dcb8"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Schnell & einfach Ihren Wunschabschlag einstellen."
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Änderung Abschlagsbetrag"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    "6c0af040-0607-423a-9b81-6f59c69dd822" = {
                        id        = "6c0af040-0607-423a-9b81-6f59c69dd822"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "a192edbe-fc69-45d3-82c0-81c9e0a98c6a"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "74ca801f-b5d7-48c3-8695-3034bafe117f" = {
                        id       = "74ca801f-b5d7-48c3-8695-3034bafe117f"
                        order    = 7
                        parentId = "118ca562-73b0-4ed4-871c-8d1dff536529"
                        props    = {
                            content    = {
                                label = {
                                    de = "Zahlungsdetails"
                                    en = "Payment method"
                                }
                                name  = "payment_method"
                            }
                            design     = {
                                layout = {
                                    type = "stacked"
                                }
                            }
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    "758b52cd-bc31-4240-b156-925b6a69c198" = {
                        id        = "758b52cd-bc31-4240-b156-925b6a69c198"
                        is_system = false
                        order     = 1
                        parentId  = "74ca801f-b5d7-48c3-8695-3034bafe117f"
                        props     = {
                            content    = {
                                hideEmptyValue = false
                                label          = {
                                    de = "Zahlungsmethode Forderung"
                                    en = "Label"
                                }
                                value          = {
                                    de = "{{Service_ECP_Zahlungsmethode_DEBIT}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    "78193c9c-0b96-4fda-8034-3ef44cf0966e" = {
                        id        = "78193c9c-0b96-4fda-8034-3ef44cf0966e"
                        is_system = false
                        order     = 2
                        parentId  = "c0dd19d5-0754-4f0a-b5f2-78d1305e91c7"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = "billing_account_id"
                                        value = "{{contract.billing_account.0._id}}"
                                    },
                                    {
                                        key   = "business_contact_id"
                                        value = "{{contract.customer.0._id}}"
                                    },
                                    {
                                        key   = "profile_contact_id"
                                        value = "{{contact._id}}"
                                    },
                                    {
                                        key   = "business_contact_geburtsdatum"
                                        value = "{{Service_ERP_Geburtstag_Vertragsinhaber}}"
                                    },
                                    {
                                        key   = "business_contact_titel"
                                        value = "{{Service_ECP_Titel_Vertragsinhaber}}"
                                    },
                                    {
                                        key   = "business_contact_email_adresse"
                                        value = "{{Service_ECP_E_Mail_Adresse_Vertragsinhaber}}"
                                    },
                                    {
                                        key   = "business_contact_telefonnummer"
                                        value = "{{Service_ECP_Telefonnummer_Vertragsinhaber}}"
                                    },
                                    {
                                        key   = "vertrag_kundenkonto"
                                        value = "{{contract.billing_account.0._title}}"
                                    },
                                    {
                                        key   = "vertrag_vertragstitel"
                                        value = "{{contract._title}}"
                                    },
                                    {
                                        key   = "vertrag_vertragsnummer"
                                        value = "{{contract.contract_number}}"
                                    },
                                    {
                                        key   = "vertrag_abnahmestelle"
                                        value = "{{contract.delivery_address[Primary]}}"
                                    },
                                    {
                                        key   = "vertrag_status"
                                        value = "{{contract.status}}"
                                    },
                                ]
                                icon_name            = "person"
                                link                 = "72fb09e0-cc75-11f0-9884-ad7112b0f6e2"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Nehmen Sie hier Änderungen an den persönlichen Daten des Geschäftspartners vor – auch wenn Sie den Vertrag stellvertretend verwalten."
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Änderung Persönliche Informationen"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    "7da9f04f-8114-418d-b1ba-9d6948e099fc" = {
                        id        = "7da9f04f-8114-418d-b1ba-9d6948e099fc"
                        is_system = false
                        order     = 1
                        parentId  = "a33ac05a-3236-40a3-8e78-50a7fa664b8a"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = "billing_account_id"
                                        value = "{{contract.billing_account.0._id}}"
                                    },
                                    {
                                        key   = "business_contact_id"
                                        value = "{{contract.customer.0._id}}"
                                    },
                                    {
                                        key   = "profile_contact_id"
                                        value = "{{contact._id}}"
                                    },
                                    {
                                        key   = "vertrag_kundenkonto"
                                        value = "{{contract.billing_account.0._title}}"
                                    },
                                    {
                                        key   = "kundenkonto_guthabenkonto_vorhanden"
                                        value = "{{Service_ECP_Guthabenkonto_CREDIT}}"
                                    },
                                    {
                                        key   = "kundenkonto_aktuelle_bankverbindung_typ"
                                        value = "{{contract.billing_account.0.payment_method[DEBIT].type}}"
                                    },
                                ]
                                icon_name            = "account_balance"
                                link                 = "300fbb30-b98d-11f0-b0fe-5958fcdf19fd"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "In wenigen Klicks die Zahlungsmethode anpassen."
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Änderung Zahlungsmethode"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    "7e946d1e-1756-4023-a7c3-c01f70190665" = {
                        id       = "7e946d1e-1756-4023-a7c3-c01f70190665"
                        order    = 2
                        parentId = "a51f36c9-0465-4346-be39-e538d0825437"
                        props    = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = {
                                    de = "Vertragsbeginn"
                                }
                                name                    = "start_date"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contract"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    "80d2c7f4-7e8c-46b2-8150-85fb293df735" = {
                        id       = "80d2c7f4-7e8c-46b2-8150-85fb293df735"
                        order    = 1
                        parentId = "5e0bf468-b8fd-4285-aa36-1ba2017479e6"
                        props    = {
                            content    = {
                                label     = {
                                    de = "Dokumente"
                                    en = [90mnull[0m[0m
                                }
                                page_size = "5"
                                renderer  = "documents"
                                schema    = "contract"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "documents"
                    }
                    "8746ffe2-ddd8-4ebc-906c-7c67666b9e5d" = {
                        id              = "8746ffe2-ddd8-4ebc-906c-7c67666b9e5d"
                        order           = 1
                        parentId        = "a192edbe-fc69-45d3-82c0-81c9e0a98c6a"
                        props           = {
                            content    = {
                                name  = "vertragsdetails"
                                title = {
                                    de = "Vertragsdetails"
                                    en = "Contract Details"
                                }
                            }
                            design     = {}
                            visibility = {
                                hidden_for_targets = [
                                    "78f61297-ea5b-47a7-bb9e-4c9d3dae1749",
                                ]
                            }
                        }
                        section         = "main"
                        top_level_block = true
                        type            = "title"
                    }
                    "880bf96e-f299-466f-b8cb-8e808b96c64e" = {
                        id       = "880bf96e-f299-466f-b8cb-8e808b96c64e"
                        order    = 5
                        parentId = "118ca562-73b0-4ed4-871c-8d1dff536529"
                        props    = {
                            content    = {
                                name   = "tariff"
                                schema = "contract"
                                title  = {
                                    de = "Ihr Tarif"
                                    en = "Tariff"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "products"
                    }
                    "89044bf5-c291-4f34-92b2-6c3af1c3978a" = {
                        id       = "89044bf5-c291-4f34-92b2-6c3af1c3978a"
                        order    = 1
                        parentId = "03ade19b-8b55-4478-83c5-959dfeb0d371"
                        props    = {
                            content    = {
                                allowedSchemas          = []
                                hideEmptyValue          = false
                                label                   = {
                                    de = "Abnahmestelle"
                                }
                                name                    = "delivery_address"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_name           = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                renderer                = "attributes"
                                schema                  = "contract"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    "96c65a29-b376-42ec-8dd9-acb2f46f2317" = {
                        id        = "96c65a29-b376-42ec-8dd9-acb2f46f2317"
                        is_system = false
                        order     = 4
                        parentId  = "03ade19b-8b55-4478-83c5-959dfeb0d371"
                        props     = {
                            content    = {
                                hideTitle = true
                                title     = {
                                    de = "Änderung Rechnungsadresse"
                                    en = "Quick actions"
                                }
                            }
                            design     = {
                                layout      = "stacked"
                                theme_style = "soft"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_actions"
                    }
                    "9bb0cc79-79cb-433b-af21-d418968169a5" = {
                        id        = "9bb0cc79-79cb-433b-af21-d418968169a5"
                        is_system = false
                        order     = 2
                        parentId  = "74ca801f-b5d7-48c3-8695-3034bafe117f"
                        props     = {
                            content    = {
                                hideEmptyValue = false
                                label          = {
                                    de = "Zahlungsmethode Guthaben"
                                    en = "Label"
                                }
                                value          = {
                                    de = "{{Service_ECP_Zahlungsmethode_CREDIT}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    "9d5dbbe6-a6fa-4418-8861-ec15392023f6" = {
                        id        = "9d5dbbe6-a6fa-4418-8861-ec15392023f6"
                        is_system = false
                        order     = 1
                        parentId  = "df8c3f38-5aeb-4941-83b6-e44c63d4a8a1"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = "billing_account_id"
                                        value = "{{contract.billing_account.0._id}}"
                                    },
                                    {
                                        key   = "business_contact_id"
                                        value = "{{contract.customer.0._id}}"
                                    },
                                    {
                                        key   = "profile_contact_id"
                                        value = "{{contact._id}}"
                                    },
                                    {
                                        key   = "kundenkonto_aktuelle_bankverbindung_kontoinhaber"
                                        value = "{{contract.billing_account.0.payment_method[DEBIT].data.fullname}}"
                                    },
                                    {
                                        key   = "kundenkonto_aktuelle_bankverbindung_iban"
                                        value = "{{contract.billing_account.0.payment_method[DEBIT].data.iban}}"
                                    },
                                    {
                                        key   = "kundenkonto_aktuelle_bankverbindung_bic"
                                        value = "{{contract.billing_account.0.payment_method[DEBIT].data.bic_number}}"
                                    },
                                    {
                                        key   = "kundenkonto_aktuelle_bankverbindung_typ"
                                        value = "{{contract.billing_account.0.payment_method[DEBIT].type}}"
                                    },
                                    {
                                        key   = "vertrag_kundenkonto"
                                        value = "{{contract.billing_account.0._title}}"
                                    },
                                    {
                                        key   = "kundenkonto_rechnungsempfaenger_firma"
                                        value = "{{contract.billing_account.0.billing_address[Primary].company_name}}"
                                    },
                                    {
                                        key   = "kundenkonto_rechnungsempfaenger_anrede_titel_vorname_nachname"
                                        value = "{{Service_ECP_Rechnungsempfaenger_Anrede_Titel_Vorname_Nachname}}"
                                    },
                                    {
                                        key   = "kundenkonto_rechnungsempfaenger_namenszusatz"
                                        value = "{{contract.billing_account.0.billing_address[Primary].name_suffix}}"
                                    },
                                    {
                                        key   = "kundenkonto_rechnungsempfaenger_adresse"
                                        value = "{{Service_ECP_Rechnungsadresse_Adresse_oder_Postfach}}"
                                    },
                                    {
                                        key   = "vertrag_point_of_consumption_reference"
                                        value = "{{contract.point_of_consumption_reference}}"
                                    },
                                ]
                                icon_name            = "moving"
                                link                 = "732e00c0-cc75-11f0-be53-17dd2278501c"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Melden Sie uns Ihren Auszug – wir erledigen den Rest."
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Auszug melden"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    a33ac05a-3236-40a3-8e78-50a7fa664b8a   = {
                        id        = "a33ac05a-3236-40a3-8e78-50a7fa664b8a"
                        is_system = false
                        order     = 3
                        parentId  = "74ca801f-b5d7-48c3-8695-3034bafe117f"
                        props     = {
                            content    = {
                                hideTitle = true
                                title     = {
                                    de = "Änderung Zahlungsmethode"
                                    en = "Quick actions"
                                }
                            }
                            design     = {
                                layout      = "stacked"
                                theme_style = "soft"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_actions"
                    }
                    a51f36c9-0465-4346-be39-e538d0825437   = {
                        id       = "a51f36c9-0465-4346-be39-e538d0825437"
                        order    = 9
                        parentId = "118ca562-73b0-4ed4-871c-8d1dff536529"
                        props    = {
                            content    = {
                                label = {
                                    de = "Vertragsdaten"
                                    en = "General information"
                                }
                                name  = "general_information"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    ae5fa1a3-aa2d-42b8-baea-4f5f9f8df231   = {
                        id        = "ae5fa1a3-aa2d-42b8-baea-4f5f9f8df231"
                        is_system = false
                        order     = 3
                        parentId  = "1956fdf8-d89f-4df4-b66a-60234e7af2a3"
                        props     = {
                            content    = {
                                label = {
                                    de = "Vorname"
                                    en = "Label"
                                }
                                value = {
                                    de = "{{contract.customer.0.first_name}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    b2cd8391-b607-4697-a0e3-93f6355b3a31   = {
                        id        = "b2cd8391-b607-4697-a0e3-93f6355b3a31"
                        is_system = false
                        order     = 2
                        parentId  = "1956fdf8-d89f-4df4-b66a-60234e7af2a3"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Titel"
                                    en = "Label"
                                }
                                value          = {
                                    de = "{{contract.customer.0.title}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    bc1e766c-6e24-481f-81ec-c39e67f8a1be   = {
                        id        = "bc1e766c-6e24-481f-81ec-c39e67f8a1be"
                        is_system = false
                        order     = 5
                        parentId  = "a51f36c9-0465-4346-be39-e538d0825437"
                        props     = {
                            content    = {
                                label                   = {
                                    de = "Abschlagshöhe"
                                }
                                name                    = "installment_amount"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contract"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    c0dd19d5-0754-4f0a-b5f2-78d1305e91c7   = {
                        id        = "c0dd19d5-0754-4f0a-b5f2-78d1305e91c7"
                        is_system = false
                        order     = 8
                        parentId  = "1956fdf8-d89f-4df4-b66a-60234e7af2a3"
                        props     = {
                            content    = {
                                hideTitle = true
                                title     = {
                                    de = "Änderung Persönliche Informationen Vertragsinhaber"
                                    en = "Quick actions"
                                }
                            }
                            design     = {
                                layout      = "stacked"
                                theme_style = "soft"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_actions"
                    }
                    cc6888c4-b46d-4c39-9736-58e54119e717   = {
                        id        = "cc6888c4-b46d-4c39-9736-58e54119e717"
                        is_system = false
                        order     = 4
                        parentId  = "df8c3f38-5aeb-4941-83b6-e44c63d4a8a1"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = "billing_account_id"
                                        value = "{{contract.billing_account.0._id}}"
                                    },
                                    {
                                        key   = "business_contact_id"
                                        value = "{{contract.customer.0._id}}"
                                    },
                                    {
                                        key   = "profile_contact_id"
                                        value = "{{contact._id}}"
                                    },
                                    {
                                        key   = "vertrag_kundenkonto"
                                        value = "{{contract.billing_account.0._title}}"
                                    },
                                    {
                                        key   = "vertrag_vertragstitel"
                                        value = "{{contract._title}}"
                                    },
                                    {
                                        key   = "vertrag_vertragsnummer"
                                        value = "{{contract.contract_number}}"
                                    },
                                    {
                                        key   = "vertrag_abnahmestelle"
                                        value = "{{contract.delivery_address[Primary]}}"
                                    },
                                    {
                                        key   = "vertrag_tarif"
                                        value = "{{contract.products.0.name}}"
                                    },
                                    {
                                        key   = "business_contact_anrede"
                                        value = "{{contract.customer.0.salutation}}"
                                    },
                                    {
                                        key   = "business_contact_titel"
                                        value = "{{contract.customer.0.title}}"
                                    },
                                    {
                                        key   = "business_contact_vorname"
                                        value = "{{contract.customer.0.first_name}}"
                                    },
                                    {
                                        key   = "business_contact_nachname"
                                        value = "{{contract.customer.0.last_name}}"
                                    },
                                    {
                                        key   = "business_contact_email_adresse"
                                        value = "{{contract.customer.0.email[Primary]}}"
                                    },
                                    {
                                        key   = "zaehler_zaehlernummer"
                                        value = "{{contract.meters.0.meter_number}}"
                                    },
                                    {
                                        key   = "zaehler_malo"
                                        value = "{{contract.meters.0.ma_lo_id}}"
                                    },
                                    {
                                        key   = "kundenkonto_rechnungsempfaenger_firma"
                                        value = "{{contract.billing_account.0.billing_address[Primary].company_name}}"
                                    },
                                    {
                                        key   = "kundenkonto_rechnungsempfaenger_anrede_titel_vorname_nachname"
                                        value = "{{Service_ECP_Rechnungsempfaenger_Anrede_Titel_Vorname_Nachname}}"
                                    },
                                    {
                                        key   = "kundenkonto_rechnungsempfaenger_namenszusatz"
                                        value = "{{contract.billing_account.0.billing_address[Primary].name_suffix}}"
                                    },
                                    {
                                        key   = "kundenkonto_rechnungsempfaenger_adresse"
                                        value = "{{Service_ECP_Rechnungsadresse_Adresse_oder_Postfach}}"
                                    },
                                    {
                                        key   = "kundenkonto_aktuelle_bankverbindung_typ"
                                        value = "{{contract.billing_account.0.payment_method[DEBIT].type}}"
                                    },
                                    {
                                        key   = "kundenkonto_aktuelle_bankverbindung_kontoinhaber"
                                        value = "{{contract.billing_account.0.payment_method[DEBIT].data.fullname}}}}"
                                    },
                                    {
                                        key   = "kundenkonto_aktuelle_bankverbindung_iban"
                                        value = "{{contract.billing_account.0.payment_method[DEBIT].data.iban}}}}"
                                    },
                                    {
                                        key   = "kundenkonto_aktuelle_bankverbindung_bic"
                                        value = "{{contract.billing_account.0.payment_method[DEBIT].data.bic_number}}}}"
                                    },
                                    {
                                        key   = "vertrag_abnahmestelle_plz"
                                        value = "{{contract.delivery_address[Primary].postal_code}}"
                                    },
                                    {
                                        key   = "vertrag_abnahmestelle_ort"
                                        value = "{{contract.delivery_address[Primary].city}}"
                                    },
                                ]
                                icon_name            = "change_circle"
                                link                 = "731b8a30-cc75-11f0-acc2-9dd45300b662"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Sichern Sie sich jetzt Ihr Angebot!"
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Vertrag wechseln"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    df8c3f38-5aeb-4941-83b6-e44c63d4a8a1   = {
                        id        = "df8c3f38-5aeb-4941-83b6-e44c63d4a8a1"
                        is_system = false
                        order     = 1
                        parentId  = "118ca562-73b0-4ed4-871c-8d1dff536529"
                        props     = {
                            content    = {
                                hideTitle = true
                                title     = {
                                    de = "Schnellaktionen"
                                    en = "Quick actions"
                                }
                            }
                            design     = {
                                layout      = "stacked"
                                theme_style = "soft"
                            }
                            visibility = {
                                hidden_for_targets = []
                            }
                        }
                        section   = "main"
                        type      = "quick_actions"
                    }
                    e69fccd0-3286-4b4a-a5da-762a893836fb   = {
                        id       = "e69fccd0-3286-4b4a-a5da-762a893836fb"
                        order    = 1
                        parentId = "a192edbe-fc69-45d3-82c0-81c9e0a98c6a"
                        props    = {
                            content    = {
                                content_bottom_name = {
                                    de = "{{contract.delivery_address[Primary]}}"
                                    en = "{{contract.delivery_address[Primary]}}"
                                }
                                content_top_name    = {
                                    de = "{{contract.branch}}"
                                    en = "{{contract.branch}}"
                                }
                                entity_title        = {
                                    de = "{{contract._title}}"
                                    en = "{{contract._title}}"
                                }
                                group_by            = "billing_account.billing_account_number"
                                group_by_order_by   = "asc"
                                group_title         = {
                                    de = "{{contract.billing_account.0._title}}"
                                }
                                main_content_name   = {
                                    de = "{{contract._title}}"
                                    en = "{{contract._title}}"
                                }
                                schema              = "contract"
                                title               = {
                                    de = "Ausgewählter Vertrag"
                                    en = "Selected contract"
                                }
                            }
                            design     = {}
                            visibility = {
                                hidden_for_targets = []
                            }
                        }
                        section  = "header"
                        type     = "entity_selector"
                    }
                    ec3933c4-c9fc-4b88-83ee-576755343076   = {
                        id        = "ec3933c4-c9fc-4b88-83ee-576755343076"
                        is_system = false
                        order     = 2
                        parentId  = "03ade19b-8b55-4478-83c5-959dfeb0d371"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Rechnungsadresse"
                                    en = "Label"
                                }
                                value          = {
                                    de = "{{Service_ECP_Rechnungsadresse}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    ec5af4ea-4743-4075-b12e-81b57bc16f1c   = {
                        id        = "ec5af4ea-4743-4075-b12e-81b57bc16f1c"
                        is_system = false
                        order     = 1
                        parentId  = "1956fdf8-d89f-4df4-b66a-60234e7af2a3"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Anrede"
                                    en = "Label"
                                }
                                value          = {
                                    de = "{{Service_ECP_Anrede_Vertragsinhaber}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    f275bcb5-ffbe-456f-9007-9809aa30d2d7   = {
                        id        = "f275bcb5-ffbe-456f-9007-9809aa30d2d7"
                        is_system = false
                        order     = 6
                        parentId  = "1956fdf8-d89f-4df4-b66a-60234e7af2a3"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "E-Mail-Adresse"
                                    en = "Label"
                                }
                                value          = {
                                    de = "{{contract.customer.0.email.0.email}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    fc8b71e3-137c-4b7f-82d8-8ab869663fae   = {
                        id        = "fc8b71e3-137c-4b7f-82d8-8ab869663fae"
                        is_system = false
                        order     = 3
                        parentId  = "118ca562-73b0-4ed4-871c-8d1dff536529"
                        props     = {
                            content    = {
                                content_top_name        = {
                                    de = "{{ticket._title}}"
                                }
                                destinationPageId       = "4c0065d2-c982-4811-92a3-c930bb60a8bd"
                                enable_search           = false
                                filter_target           = "923cab63-bce3-497d-8a29-cd500d32bc2e"
                                filters_context_mapping = {
                                    context = "contractId"
                                }
                                group_by_order_by       = "desc"
                                group_size              = "10"
                                main_content_name       = {
                                    de = "Bearbeitungsstatus: {{ticket.bearbeitungsstatus_anfrage}}"
                                    en = "{{ticket._title}}"
                                }
                                schema                  = "ticket"
                                search_fields           = [
                                    "_title",
                                    "ticket_number",
                                ]
                                search_fields_keys      = [
                                    "ticket::_title",
                                    "ticket::ticket_number",
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "entity_list"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Meine Verträge"
                        en = "Contracts details"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "a192edbe-fc69-45d3-82c0-81c9e0a98c6a"
                is_system    = true
                order        = 11
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#contracts"
                schema       = [
                    "contact",
                    "contract",
                ]
                slug         = "contracts"
                visibility   = {
                    hidden_for_targets = [
                        "78f61297-ea5b-47a7-bb9e-4c9d3dae1749",
                    ]
                    is_hidden          = false
                }
            },
            {
                blocks       = {
                    "1daae92d-9f0c-4a20-81ed-d07fba1dc447" = {
                        id       = "1daae92d-9f0c-4a20-81ed-d07fba1dc447"
                        order    = 1
                        parentId = "e358bc0d-b817-4a76-bbe4-e1f2b3de6f9b"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "meter_readings"
                    }
                    "3c3f1b72-6304-4a8f-ac8f-4cc6f30e1096" = {
                        id       = "3c3f1b72-6304-4a8f-ac8f-4cc6f30e1096"
                        order    = 1
                        parentId = "a98963aa-b123-42b0-9f9c-40191960e410"
                        props    = {
                            content    = {
                                content_bottom_name = "ma_lo_id"
                                content_top_name    = "status"
                                main_content_name   = "meter_number"
                                title               = {
                                    de = "Zähler auswählen"
                                    en = "Select a meter"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "meter_selector"
                    }
                    "4172bdcc-e422-4b25-9299-dc14aff78c6c" = {
                        id       = "4172bdcc-e422-4b25-9299-dc14aff78c6c"
                        order    = 1
                        parentId = "0a095540-17ca-4575-a3ae-8816caecdcd8"
                        props    = {
                            content    = {
                                content_bottom_name = {
                                    de = "{{contract.delivery_address[Primary]}}"
                                    en = "{{contract.delivery_address[Primary]}}"
                                }
                                content_top_name    = {
                                    de = "{{contract.branch}}"
                                    en = "{{contract.branch}}"
                                }
                                entity_title        = {
                                    de = "{{contract._title}}"
                                    en = "{{contract._title}}"
                                }
                                group_by            = "billing_account.billing_account_number"
                                group_by_order_by   = "asc"
                                group_title         = {
                                    de = "{{contract.billing_account.0._title}}"
                                }
                                main_content_name   = {
                                    de = "{{contract._title}}"
                                    en = "{{contract._title}}"
                                }
                                schema              = "contract"
                                title               = {
                                    de = "Ausgewählter Vertrag"
                                    en = "Selected contract"
                                }
                            }
                            design     = {}
                            visibility = {
                                hidden_for_targets = [
                                    "78f61297-ea5b-47a7-bb9e-4c9d3dae1749",
                                ]
                            }
                        }
                        section  = "header"
                        type     = "entity_selector"
                    }
                    "688e9eb1-0df8-472c-8979-6132d63db5bc" = {
                        id       = "688e9eb1-0df8-472c-8979-6132d63db5bc"
                        order    = 2
                        parentId = "0a095540-17ca-4575-a3ae-8816caecdcd8"
                        props    = {
                            content    = {
                                name  = "consumption"
                                title = {
                                    de = "Verbrauch"
                                    en = "Consumption"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                    "71f87846-4d79-4eeb-b411-3ddd428fdb39" = {
                        id        = "71f87846-4d79-4eeb-b411-3ddd428fdb39"
                        is_system = false
                        order     = 6
                        parentId  = "0a095540-17ca-4575-a3ae-8816caecdcd8"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = {
                                    de = "Vertragsnummer"
                                }
                                name                    = "contract_number"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contract"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "96318361-2056-4bc8-99c4-d4ef64e29739" = {
                        id        = "96318361-2056-4bc8-99c4-d4ef64e29739"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "0a095540-17ca-4575-a3ae-8816caecdcd8"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    a98963aa-b123-42b0-9f9c-40191960e410   = {
                        id       = "a98963aa-b123-42b0-9f9c-40191960e410"
                        order    = 3
                        parentId = "0a095540-17ca-4575-a3ae-8816caecdcd8"
                        props    = {
                            content    = {
                                label = {
                                    de = [90mnull[0m[0m
                                    en = [90mnull[0m[0m
                                }
                                name  = [90mnull[0m[0m
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    d97cbc9d-71db-4627-a8f8-91252e8547f4   = {
                        id        = "d97cbc9d-71db-4627-a8f8-91252e8547f4"
                        is_system = false
                        order     = 5
                        parentId  = "0a095540-17ca-4575-a3ae-8816caecdcd8"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = {
                                    de = "Vertragskontonummer"
                                }
                                name                    = "account_number"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contract"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    e358bc0d-b817-4a76-bbe4-e1f2b3de6f9b   = {
                        id       = "e358bc0d-b817-4a76-bbe4-e1f2b3de6f9b"
                        order    = 4
                        parentId = "0a095540-17ca-4575-a3ae-8816caecdcd8"
                        props    = {
                            content    = {
                                label = {
                                    de = "Ihre bisherigen Ablesungen"
                                    en = "Meter readings"
                                }
                                name  = "meter_readings"
                            }
                            design     = {
                                layout = {
                                    type = "stacked"
                                }
                            }
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    ff56f8e7-8760-4427-9fcd-70321ba3c571   = {
                        id       = "ff56f8e7-8760-4427-9fcd-70321ba3c571"
                        order    = 2
                        parentId = "a98963aa-b123-42b0-9f9c-40191960e410"
                        props    = {
                            content    = {
                                billing_decimal_precision      = 0
                                button_label                   = {
                                    de = "Zählerstand hinzufügen"
                                    en = "Add meter reading"
                                }
                                note_suggestions               = {
                                    de = [
                                        "Änderung der Personenzahl im Haushalt",
                                        "Anschaffung stromintensiver Geräte",
                                        "Eigenverbrauch Photovoltaikanlage",
                                        "Einbau Solaranlage",
                                        "Heizungsmodernisierung",
                                        "Leerstand der Immobilie",
                                        "Umbauarbeiten",
                                        "Zusätzliche Dämmung",
                                        "Zusätzliche Feuerstelle (z.B. Kaminofen)",
                                    ]
                                    en = [
                                        "Change in number of people in household",
                                        "Purchase of power-intensive appliances",
                                        "Self-consumption from photovoltaic system",
                                        "Installation of solar system",
                                        "Heating modernization",
                                        "Property vacancy",
                                        "Renovation work",
                                        "Additional insulation",
                                        "Additional fireplace (e.g. wood stove)",
                                    ]
                                }
                                remark_suggestions             = {
                                    de = [
                                        "Änderung der Personenzahl im Haushalt",
                                        "Anschaffung stromintensiver Geräte",
                                        "Eigenverbrauch Photovoltaikanlage",
                                        "Einbau Solaranlage",
                                        "Heizungsmodernisierung",
                                        "Leerstand der Immobilie",
                                        "Umbauarbeiten",
                                        "Zusätzliche Dämmung",
                                        "Zusätzliche Feuerstelle (z.B. Kaminofen)",
                                    ]
                                    en = [
                                        "Change in number of people in household",
                                        "Purchase of power-intensive appliances",
                                        "Self-consumption from photovoltaic system",
                                        "Installation of solar system",
                                        "Heating modernization",
                                        "Property vacancy",
                                        "Renovation work",
                                        "Additional insulation",
                                        "Additional fireplace (e.g. wood stove)",
                                    ]
                                }
                                require_note_for_implausible   = true
                                require_remark_for_implausible = true
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "add_meter_reading"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Verbräuche"
                        en = "Consumption"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "0a095540-17ca-4575-a3ae-8816caecdcd8"
                is_system    = true
                order        = 12
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#meters"
                schema       = [
                    "contact",
                    "meter",
                    "contract",
                    "meter_counter",
                ]
                slug         = "meters"
                visibility   = {}
            },
            {
                blocks       = {
                    "520457bc-5842-4889-a136-c4cb71c02c9d" = {
                        id        = "520457bc-5842-4889-a136-c4cb71c02c9d"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "64c6143d-3a2b-4242-a37f-70b113c9d00d"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Mein Konto"
                        en = "My Account"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "64c6143d-3a2b-4242-a37f-70b113c9d00d"
                is_system    = true
                order        = 13
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#my-account"
                schema       = [
                    "contact",
                ]
                slug         = "my-account"
                visibility   = {}
            },
            {
                blocks       = {
                    "04d1bfce-e38a-46cd-bb7a-19267183e2c1" = {
                        id        = "04d1bfce-e38a-46cd-bb7a-19267183e2c1"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "2b6e12b9-6146-43ef-882f-02bd1845c621"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "30e8fbbb-4fef-47d7-9937-e7dbbc853517" = {
                        id       = "30e8fbbb-4fef-47d7-9937-e7dbbc853517"
                        order    = 2
                        parentId = "2b6e12b9-6146-43ef-882f-02bd1845c621"
                        props    = {
                            content    = {
                                name      = [90mnull[0m[0m
                                page_size = "10"
                                schema    = "all"
                                title     = {
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "documents"
                    }
                    ea3cbc5a-2a61-4835-b28e-1a4deed51e27   = {
                        id       = "ea3cbc5a-2a61-4835-b28e-1a4deed51e27"
                        order    = 1
                        parentId = "2b6e12b9-6146-43ef-882f-02bd1845c621"
                        props    = {
                            content    = {
                                name  = "dokumente"
                                title = {
                                    de = "Dokumente"
                                    en = "Documents"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Dokumente"
                        en = "Documents"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "2b6e12b9-6146-43ef-882f-02bd1845c621"
                is_public    = false
                is_system    = true
                order        = 14
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#documents"
                slug         = "documents"
            },
            {
                blocks       = {
                    "20348110-fd17-4033-b8d3-bfdae2901233" = {
                        id        = "20348110-fd17-4033-b8d3-bfdae2901233"
                        is_system = false
                        order     = 3
                        parentId  = "725956d2-9668-478d-91ef-23c9e4ddfd51"
                        props     = {
                            content    = {
                                hideTitle = true
                                title     = {
                                    de = "Änderung Abschlagsbetrag"
                                    en = "Quick actions"
                                }
                            }
                            design     = {
                                layout      = "stacked"
                                theme_style = "soft"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_actions"
                    }
                    "418d2bca-ea9f-4221-a582-b4e20ad57791" = {
                        id       = "418d2bca-ea9f-4221-a582-b4e20ad57791"
                        order    = 3
                        parentId = "cf327ac5-18e8-4228-86a8-52fb11d15040"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "balance"
                    }
                    "49cae932-5408-44eb-bf3a-a35be7798128" = {
                        id       = "49cae932-5408-44eb-bf3a-a35be7798128"
                        order    = 1
                        parentId = "cf327ac5-18e8-4228-86a8-52fb11d15040"
                        props    = {
                            content    = {
                                content_bottom_name = {
                                    de = "{{contract.delivery_address[Primary]}}"
                                    en = "{{contract.delivery_address[Primary]}}"
                                }
                                content_top_name    = {
                                    de = "{{contract.branch}}"
                                    en = "{{contract.branch}}"
                                }
                                entity_title        = {
                                    de = "{{contract._title}}"
                                    en = "{{contract._title}}"
                                }
                                group_by            = "billing_account.billing_account_number"
                                group_by_order_by   = "asc"
                                group_title         = {
                                    de = "{{contract.billing_account.0._title}}"
                                }
                                main_content_name   = {
                                    de = "{{contract._title}}"
                                    en = "{{contract._title}}"
                                }
                                schema              = "contract"
                                title               = {
                                    de = "Ausgewählter Vertrag"
                                    en = "Selected contract"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "header"
                        type     = "entity_selector"
                    }
                    "4be2f725-aba3-459d-aaf2-3a86f1e67917" = {
                        id       = "4be2f725-aba3-459d-aaf2-3a86f1e67917"
                        order    = 5
                        parentId = "cf327ac5-18e8-4228-86a8-52fb11d15040"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "payment"
                    }
                    "63858bf3-0754-448e-9cba-fb81c70f73cc" = {
                        id        = "63858bf3-0754-448e-9cba-fb81c70f73cc"
                        is_system = false
                        order     = 1
                        parentId  = "20348110-fd17-4033-b8d3-bfdae2901233"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = "aktueller_abschlag"
                                        value = "{{contract.installment_amount_decimal}}"
                                    },
                                    {
                                        key   = "minimaler_abschlag"
                                        value = "{{contract.installment_amount_lowerlimit_decimal}}"
                                    },
                                    {
                                        key   = "maximaler_abschlag"
                                        value = "{{contract.installment_amount_upperlimit_decimal}}"
                                    },
                                    {
                                        key   = "billing_account"
                                        value = "{{contract.billing_account.0._id}}"
                                    },
                                ]
                                icon_name            = "currency_exchange"
                                link                 = "6fd39d77-aecd-48c8-a9bd-5ce21455dcb8"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Schnell & einfach Ihren Wunschabschlag einstellen."
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Änderung Abschlagsbetrag"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    "725956d2-9668-478d-91ef-23c9e4ddfd51" = {
                        id       = "725956d2-9668-478d-91ef-23c9e4ddfd51"
                        order    = 4
                        parentId = "cf327ac5-18e8-4228-86a8-52fb11d15040"
                        props    = {
                            content    = {
                                label = {
                                    de = [90mnull[0m[0m
                                    en = [90mnull[0m[0m
                                }
                                name  = [90mnull[0m[0m
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    "8e0b8116-dc9d-4e9b-9aef-ad03b4c27439" = {
                        id        = "8e0b8116-dc9d-4e9b-9aef-ad03b4c27439"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "cf327ac5-18e8-4228-86a8-52fb11d15040"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    c6e0894e-52ac-4e75-9301-76c661e69ec5   = {
                        id       = "c6e0894e-52ac-4e75-9301-76c661e69ec5"
                        order    = 2
                        parentId = "cf327ac5-18e8-4228-86a8-52fb11d15040"
                        props    = {
                            content    = {
                                name  = "payments"
                                title = {
                                    de = "Zahlungen"
                                    en = "Payments"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Zahlungen"
                        en = "Payments"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "cf327ac5-18e8-4228-86a8-52fb11d15040"
                is_system    = true
                order        = 15
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#payments"
                schema       = [
                    "contact",
                    "contract",
                ]
                slug         = "payments"
                visibility   = {}
            },
            {
                blocks       = {
                    "179308f3-11d9-4787-9676-58bd8d1f2af9" = {
                        id       = "179308f3-11d9-4787-9676-58bd8d1f2af9"
                        order    = 1
                        parentId = "dec6b5a5-0a87-458c-8344-f2a5c6e74195"
                        props    = {
                            content    = {
                                label = {
                                    de = "E-Mail"
                                    en = "Support E-Mail"
                                }
                                name  = "support_e_mail"
                                value = {
                                    de = "support@example.de"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "display_field"
                    }
                    "1a8433c4-19cf-47a5-8ca3-e42057b71385" = {
                        id       = "1a8433c4-19cf-47a5-8ca3-e42057b71385"
                        order    = 1
                        parentId = "b837cec5-2474-4350-b911-0ec90982d200"
                        props    = {
                            content    = {
                                name  = "support"
                                title = {
                                    de = "Kontaktmöglichkeiten unseres Kundenservice"
                                    en = "Support"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                    "4e80e113-01ea-4bc6-afc9-3688f9bfca94" = {
                        id       = "4e80e113-01ea-4bc6-afc9-3688f9bfca94"
                        order    = 2
                        parentId = "dec6b5a5-0a87-458c-8344-f2a5c6e74195"
                        props    = {
                            content    = {
                                label = {
                                    de = "Telefon Inland Kostenlos (Montag bis Freitag: 08:00 - 20:00 Uhr)"
                                    en = "Support Hotline"
                                }
                                name  = "support_hotline"
                                value = {
                                    de = "0800 123456"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "display_field"
                    }
                    "5db0b8a5-4fa1-496f-903e-63f5dce36f04" = {
                        id        = "5db0b8a5-4fa1-496f-903e-63f5dce36f04"
                        is_system = false
                        order     = 3
                        parentId  = "b837cec5-2474-4350-b911-0ec90982d200"
                        props     = {
                            content    = {
                                hideTitle = true
                                title     = {
                                    de = "Schnellaktionen"
                                    en = "Quick actions"
                                }
                            }
                            design     = {
                                layout      = "stacked"
                                theme_style = "soft"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_actions"
                    }
                    "6026dd0e-02cb-469a-a4c6-9cee8d93ba06" = {
                        id        = "6026dd0e-02cb-469a-a4c6-9cee8d93ba06"
                        is_system = false
                        order     = 4
                        parentId  = "b837cec5-2474-4350-b911-0ec90982d200"
                        props     = {
                            content    = {
                                content_bottom_name = {
                                    de = "{{contract.delivery_address[Primary]}}"
                                }
                                content_top_name    = {
                                    de = "{{contract.branch}}"
                                }
                                entity_title        = {
                                    de = "{{contract._title}}"
                                    en = "{{contract._title}}"
                                }
                                group_by            = "billing_account.billing_account_number"
                                group_by_order_by   = "asc"
                                group_title         = {
                                    de = "{{contract.billing_account.0._title}}"
                                }
                                main_content_name   = {
                                    de = "{{contract._title}}"
                                    en = "{{contract._title}}"
                                }
                                schema              = "contract"
                                title               = {
                                    de = "Ausgewählter Vertrag"
                                }
                            }
                            design     = {
                                entity_title_template  = "_title"
                                hide_inactive_entities = false
                            }
                            visibility = {}
                        }
                        section   = "header"
                        type      = "entity_selector"
                    }
                    "83cefdbe-3781-4072-a287-d7df1d2a9f53" = {
                        id        = "83cefdbe-3781-4072-a287-d7df1d2a9f53"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "b837cec5-2474-4350-b911-0ec90982d200"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "872e1007-981e-4dcc-bbbc-8759e238b0cb" = {
                        id        = "872e1007-981e-4dcc-bbbc-8759e238b0cb"
                        is_system = false
                        order     = 4
                        parentId  = "5db0b8a5-4fa1-496f-903e-63f5dce36f04"
                        props     = {
                            content    = {
                                action               = "journey"
                                context_params       = [
                                    {
                                        key   = "billing_account_id"
                                        value = "{{contract.billing_account.0._id}}"
                                    },
                                    {
                                        key   = "business_contact_id"
                                        value = "{{contract.customer.0._id}}"
                                    },
                                    {
                                        key   = "profile_contact_id"
                                        value = "{{contact._id}}"
                                    },
                                    {
                                        key   = "profile_contact_email_adresse"
                                        value = "{{portal_user.email[Primary]}}"
                                    },
                                    {
                                        key   = "vertrag_kundenkonto"
                                        value = "{{contract.billing_account.0._title}}"
                                    },
                                    {
                                        key   = "vertrag_vertragstitel"
                                        value = "{{contract._title}}"
                                    },
                                    {
                                        key   = "vertrag_vertragsnummer"
                                        value = "{{contract.contract_number}}"
                                    },
                                    {
                                        key   = "vertrag_abnahmestelle"
                                        value = "{{contract.delivery_address[Primary]}}"
                                    },
                                    {
                                        key   = "vertrag_status"
                                        value = "{{contract.status}}"
                                    },
                                ]
                                icon_name            = "contact_support"
                                link                 = "935cb020-cc3a-11f0-bb72-190e97250d3a"
                                linkType             = "external"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Stellen Sie uns Ihre Frage - wir kümmern uns schnellstmöglich um Ihr Anliegen."
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Kontaktformular"
                                    en = "Action"
                                }
                            }
                            design     = {
                                size = "sm"
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "quick_action"
                    }
                    ad237a0f-081f-4449-b807-26d8014edc93   = {
                        id        = "ad237a0f-081f-4449-b807-26d8014edc93"
                        is_system = false
                        order     = 3
                        parentId  = "dec6b5a5-0a87-458c-8344-f2a5c6e74195"
                        props     = {
                            content    = {
                                label = {
                                    de = "Telefon aus dem Ausland"
                                    en = "Label"
                                }
                                value = {
                                    de = "0800 9999999"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    dec6b5a5-0a87-458c-8344-f2a5c6e74195   = {
                        id       = "dec6b5a5-0a87-458c-8344-f2a5c6e74195"
                        order    = 2
                        parentId = "b837cec5-2474-4350-b911-0ec90982d200"
                        props    = {
                            content    = {
                                label = {
                                    de = [90mnull[0m[0m
                                    en = [90mnull[0m[0m
                                }
                                name  = [90mnull[0m[0m
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Support"
                        en = "Support"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                design       = {}
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "b837cec5-2474-4350-b911-0ec90982d200"
                is_system    = true
                order        = 16
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#support"
                schema       = [
                    "contract",
                ]
                slug         = "support"
                visibility   = {}
            },
            {
                blocks       = {
                    "06467ecd-c5ca-425f-b2f9-137f5128f986" = {
                        id        = "06467ecd-c5ca-425f-b2f9-137f5128f986"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "991793dc-7171-4675-82d0-c1f4f07ff172"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "1bdf8697-3878-4293-ba5e-df690f09c086" = {
                        id       = "1bdf8697-3878-4293-ba5e-df690f09c086"
                        order    = 1
                        parentId = "660c2d00-5f49-48ef-8956-d427765c65e1"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "delivery_address"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "opportunity"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    "1c630faf-1b82-405d-9f94-025b2083e0b3" = {
                        id       = "1c630faf-1b82-405d-9f94-025b2083e0b3"
                        order    = 4
                        parentId = "d52b4b4a-7732-474b-b71a-787b17c5a2d5"
                        props    = {
                            content    = {
                                name   = "progress"
                                schema = "opportunity"
                                title  = {
                                    de = "Fortschritt"
                                    en = "Progress"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "workflows"
                    }
                    "660c2d00-5f49-48ef-8956-d427765c65e1" = {
                        id       = "660c2d00-5f49-48ef-8956-d427765c65e1"
                        order    = 1
                        parentId = "b6a70336-1178-4178-a35f-2be38b0276b2"
                        props    = {
                            content    = {
                                label = {
                                    de = "Adresse"
                                    en = "Address"
                                }
                                name  = "address"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    "90abada8-cc0d-48b8-aba3-fe03aeb578f6" = {
                        id       = "90abada8-cc0d-48b8-aba3-fe03aeb578f6"
                        order    = 3
                        parentId = "c0e0bca4-e415-4a1e-9d11-af2e36426540"
                        props    = {
                            content    = {
                                label = {
                                    de   = "Dokumente"
                                    en   = "Documents"
                                    name = "documents"
                                }
                                name  = "documents"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tab"
                    }
                    a0b2d9b0-b252-4a13-b65e-a82b1a382fab   = {
                        id       = "a0b2d9b0-b252-4a13-b65e-a82b1a382fab"
                        order    = 1
                        parentId = "d52b4b4a-7732-474b-b71a-787b17c5a2d5"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "opportunity_title"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "opportunity"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    b4a57e7b-3750-48e4-9ebb-fd267f021803   = {
                        id       = "b4a57e7b-3750-48e4-9ebb-fd267f021803"
                        order    = 1
                        parentId = "90abada8-cc0d-48b8-aba3-fe03aeb578f6"
                        props    = {
                            content    = {
                                page_size = 5
                                schema    = "opportunity"
                                title     = {}
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "documents"
                    }
                    b6a70336-1178-4178-a35f-2be38b0276b2   = {
                        id       = "b6a70336-1178-4178-a35f-2be38b0276b2"
                        order    = 2
                        parentId = "c0e0bca4-e415-4a1e-9d11-af2e36426540"
                        props    = {
                            content    = {
                                label = {
                                    de   = "Details"
                                    en   = "Details"
                                    name = "details"
                                }
                                name  = "details"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tab"
                    }
                    c0e0bca4-e415-4a1e-9d11-af2e36426540   = {
                        id       = "c0e0bca4-e415-4a1e-9d11-af2e36426540"
                        order    = 3
                        parentId = "991793dc-7171-4675-82d0-c1f4f07ff172"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tabs"
                    }
                    c54c1ed7-6314-45e1-90b4-f554bad9a82f   = {
                        id       = "c54c1ed7-6314-45e1-90b4-f554bad9a82f"
                        order    = 1
                        parentId = "991793dc-7171-4675-82d0-c1f4f07ff172"
                        props    = {
                            content    = {
                                name  = "opportunity_details"
                                title = {
                                    de = "Anfragen"
                                    en = "Opportunity details"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                    cf65a0ce-d164-46d2-8b43-cfe54b64fbff   = {
                        id       = "cf65a0ce-d164-46d2-8b43-cfe54b64fbff"
                        order    = 2
                        parentId = "d52b4b4a-7732-474b-b71a-787b17c5a2d5"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "opportunity_number"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "opportunity"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    d42938dd-81da-49d8-b91d-f4475d215160   = {
                        id       = "d42938dd-81da-49d8-b91d-f4475d215160"
                        order    = 3
                        parentId = "d52b4b4a-7732-474b-b71a-787b17c5a2d5"
                        props    = {
                            content    = {
                                name   = "products"
                                schema = "opportunity"
                                title  = {
                                    de = "Produkte"
                                    en = "Products"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "products"
                    }
                    d52b4b4a-7732-474b-b71a-787b17c5a2d5   = {
                        id       = "d52b4b4a-7732-474b-b71a-787b17c5a2d5"
                        order    = 1
                        parentId = "c0e0bca4-e415-4a1e-9d11-af2e36426540"
                        props    = {
                            content    = {
                                label = {
                                    de   = "Übersicht"
                                    en   = "Overview"
                                    name = "overview"
                                }
                                name  = "overview"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tab"
                    }
                    e5c64fef-e68d-4196-8e50-f18fed395465   = {
                        id       = "e5c64fef-e68d-4196-8e50-f18fed395465"
                        order    = 2
                        parentId = "660c2d00-5f49-48ef-8956-d427765c65e1"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "billing_address"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "opportunity"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Anfragen"
                        en = "Opportunity"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "991793dc-7171-4675-82d0-c1f4f07ff172"
                is_public    = false
                is_system    = true
                order        = 18
                org_id       = "20000388"
                parentId     = "c97527d9-b9ae-450e-a33e-096f1856a018"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#opportunities"
                schema       = [
                    "contact",
                    "opportunity",
                ]
                slug         = "opportunities"
            },
            {
                blocks       = {
                    "080c2c86-ed94-4358-9407-f7f6ebf55895" = {
                        id       = "080c2c86-ed94-4358-9407-f7f6ebf55895"
                        order    = 1
                        parentId = "b736c97f-cafc-4723-bd40-c520ba83a6f2"
                        props    = {
                            content    = {
                                enable_search      = true
                                page_size          = 5
                                schema             = "order"
                                search_fields      = [
                                    "_title",
                                ]
                                search_fields_keys = [
                                    "order::_title",
                                ]
                                title              = {}
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "documents"
                    }
                    "0a1c7b3a-3d98-41c6-83c1-58cb2e0439ad" = {
                        id       = "0a1c7b3a-3d98-41c6-83c1-58cb2e0439ad"
                        order    = 1
                        parentId = "e005d608-86d8-48a7-ae46-2ce0adcba87f"
                        props    = {
                            content    = {
                                name  = "order_details"
                                title = {
                                    de = "Bestelldetails"
                                    en = "Order details"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                    "123759ee-d648-4dee-8163-359d42ebf4fe" = {
                        id        = "123759ee-d648-4dee-8163-359d42ebf4fe"
                        is_system = false
                        order     = 5
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Identifizierung Anschluss"
                                name                    = "identifizierung_anschluss"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "198d40d6-a0b8-4810-9add-472215f94830" = {
                        id        = "198d40d6-a0b8-4810-9add-472215f94830"
                        is_system = false
                        order     = 14
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Sonstiger Bisheriger Lieferant"
                                name                    = "sonstiger_bisheriger_lieferant"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "2b2dcea0-44b7-4804-800e-e03639bae454" = {
                        id        = "2b2dcea0-44b7-4804-800e-e03639bae454"
                        is_system = false
                        order     = 2
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Belieferung"
                                name                    = "belieferung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "31a2402a-e28d-42d7-a3a5-f4b73ad666af" = {
                        id        = "31a2402a-e28d-42d7-a3a5-f4b73ad666af"
                        is_system = false
                        order     = 10
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Übernahme Kündigung"
                                name                    = "uebernahme_kuendigung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "3548251b-3796-463f-893b-86162aa70d6e" = {
                        id        = "3548251b-3796-463f-893b-86162aa70d6e"
                        is_system = false
                        order     = 21
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Nachname Rechnungsempfänger"
                                name                    = "nachname_rechnungsempfaenger"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "366c4099-fbb6-4511-94f0-be2297bfa55f" = {
                        id        = "366c4099-fbb6-4511-94f0-be2297bfa55f"
                        is_system = false
                        order     = 15
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Aktueller Tarif"
                                name                    = "aktueller_tarif"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "3ddf239c-b77e-4b54-bde2-aa46426c084a" = {
                        id        = "3ddf239c-b77e-4b54-bde2-aa46426c084a"
                        is_system = false
                        order     = 1
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Erwarteter Jahresverbrauch (in kWh)"
                                name                    = "erwarteter_jahresverbrauch_in_kwh"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "4118e7e9-fa84-4c14-9aac-2e85ce87d10d" = {
                        id       = "4118e7e9-fa84-4c14-9aac-2e85ce87d10d"
                        order    = 4
                        parentId = "e716e5ff-ceee-449c-881f-00f3d528d1fe"
                        props    = {
                            content    = {
                                label = {
                                    de = "Zahlung"
                                    en = "Payment"
                                }
                                name  = "payment"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    "42c5bf8b-1f0a-4279-bc8b-4394f3bdc299" = {
                        id       = "42c5bf8b-1f0a-4279-bc8b-4394f3bdc299"
                        order    = 3
                        parentId = "b938e981-cb69-4b35-bd13-653ac613ff6c"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "billing_address"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    "52a9547c-e55a-4e29-8542-9df20390ca77" = {
                        id        = "52a9547c-e55a-4e29-8542-9df20390ca77"
                        is_system = false
                        order     = 18
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Anrede Rechnungsempfänger"
                                name                    = "anrede_rechnungsempfaenger"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "66929ea2-c016-4faf-b363-0117e9c66bf0" = {
                        id       = "66929ea2-c016-4faf-b363-0117e9c66bf0"
                        order    = 2
                        parentId = "e005d608-86d8-48a7-ae46-2ce0adcba87f"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tabs"
                    }
                    "6e453344-9448-48b8-8e9c-9264a1506852" = {
                        id        = "6e453344-9448-48b8-8e9c-9264a1506852"
                        is_system = false
                        order     = 8
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Zählerstand (in kWh)"
                                name                    = "zaehlerstand_in_kwh"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "7000093a-cde5-4604-8f74-edd26ca807c7" = {
                        id        = "7000093a-cde5-4604-8f74-edd26ca807c7"
                        is_system = false
                        order     = 11
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Bestätigter Kündigungstermin"
                                name                    = "bestaetigter_kuendigungstermin"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "789c889e-8863-47cc-8338-88041c5f0679" = {
                        id        = "789c889e-8863-47cc-8338-88041c5f0679"
                        is_system = false
                        order     = 12
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Nächstmöglicher Kündigungstermin"
                                name                    = "naechstmoeglicher_kuendigungstermin"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "84239ec5-1a85-4acd-aeb8-464ef095edf0" = {
                        id        = "84239ec5-1a85-4acd-aeb8-464ef095edf0"
                        is_system = false
                        order     = 13
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Bisheriger Lieferant"
                                name                    = "bisheriger_lieferant"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "86a9e946-9daf-4c18-8370-524faf53fe86" = {
                        id        = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        is_system = false
                        order     = 3
                        parentId  = "e716e5ff-ceee-449c-881f-00f3d528d1fe"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Übermittelte Informationen"
                                }
                                value          = "order::42c40c8d-8690-4d6f-9da4-4f976d720200"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute_group"
                    }
                    "8a7f0a0f-e9b3-4053-9179-7800760b910a" = {
                        id        = "8a7f0a0f-e9b3-4053-9179-7800760b910a"
                        is_system = false
                        order     = 3
                        parentId  = "97877471-aa5f-4dc1-93aa-352cf46c032e"
                        props     = {
                            content    = {
                                label = {
                                    de = "Vorname"
                                    en = "Label"
                                }
                                value = {
                                    de = "{{order.billing_contact[contact:customer].first_name}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    "8fca99c3-4986-4cf9-8108-2408b77e99f2" = {
                        id        = "8fca99c3-4986-4cf9-8108-2408b77e99f2"
                        is_system = false
                        order     = 16
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Wechsel Datum"
                                name                    = "wechsel_datum"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "97877471-aa5f-4dc1-93aa-352cf46c032e" = {
                        id        = "97877471-aa5f-4dc1-93aa-352cf46c032e"
                        is_system = false
                        order     = 1
                        parentId  = "e716e5ff-ceee-449c-881f-00f3d528d1fe"
                        props     = {
                            content    = {
                                label = {
                                    de = "Rechnungskontakt"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {
                                layout = {
                                    type = "stacked"
                                }
                            }
                            visibility = {}
                        }
                        section   = "main"
                        type      = "group"
                    }
                    "98038d3d-cd45-40a4-8c17-e33952fe73f1" = {
                        id       = "98038d3d-cd45-40a4-8c17-e33952fe73f1"
                        order    = 1
                        parentId = "c612edec-65a1-453e-94c5-39f8b2a65a3c"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "order_number"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    b36a0d81-cf4b-4cc7-a3b1-834d13744025   = {
                        id        = "b36a0d81-cf4b-4cc7-a3b1-834d13744025"
                        is_system = false
                        order     = 7
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Zählernummer"
                                name                    = "zaehlernummer"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    b4bc0a6a-3a92-4083-939c-ee319dabc16d   = {
                        id        = "b4bc0a6a-3a92-4083-939c-ee319dabc16d"
                        is_system = false
                        order     = 6
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Marktlokationsnummer"
                                name                    = "marktlokationsnummer"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    b736c97f-cafc-4723-bd40-c520ba83a6f2   = {
                        id       = "b736c97f-cafc-4723-bd40-c520ba83a6f2"
                        order    = 3
                        parentId = "66929ea2-c016-4faf-b363-0117e9c66bf0"
                        props    = {
                            content    = {
                                label = {
                                    de   = "Dokumente"
                                    en   = "Documents"
                                    name = "documents"
                                }
                                name  = "documents"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tab"
                    }
                    b938e981-cb69-4b35-bd13-653ac613ff6c   = {
                        id       = "b938e981-cb69-4b35-bd13-653ac613ff6c"
                        order    = 2
                        parentId = "e716e5ff-ceee-449c-881f-00f3d528d1fe"
                        props    = {
                            content    = {
                                label = {
                                    de = "Adresse"
                                    en = "Address"
                                }
                                name  = "address"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    b9b0a2e8-82d8-4174-af0d-86550002d0ac   = {
                        id        = "b9b0a2e8-82d8-4174-af0d-86550002d0ac"
                        is_system = false
                        order     = 9
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Ablesedatum"
                                name                    = "ablesedatum"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    bae13e58-b918-4046-b5f0-088272b17a19   = {
                        id        = "bae13e58-b918-4046-b5f0-088272b17a19"
                        is_system = false
                        order     = 3
                        parentId  = "c612edec-65a1-453e-94c5-39f8b2a65a3c"
                        props     = {
                            content    = {
                                schema = "order"
                                title  = {
                                    de = "Prozess"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "workflows"
                    }
                    bcf92a54-31ff-4b94-8ffd-2ea6cf6a2def   = {
                        id        = "bcf92a54-31ff-4b94-8ffd-2ea6cf6a2def"
                        is_system = false
                        order     = 4
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Zählerart"
                                name                    = "zaehlerart"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    c3a392c7-7756-4a87-9faf-0b0e1493d120   = {
                        id       = "c3a392c7-7756-4a87-9faf-0b0e1493d120"
                        order    = 2
                        parentId = "b938e981-cb69-4b35-bd13-653ac613ff6c"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "delivery_address"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    c60851ca-d9b6-446d-92f6-633c30ef7482   = {
                        id        = "c60851ca-d9b6-446d-92f6-633c30ef7482"
                        is_system = false
                        order     = 17
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Kundennummer aktueller Vertrag"
                                name                    = "kundennummer_aktueller_vertrag"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    c612edec-65a1-453e-94c5-39f8b2a65a3c   = {
                        id       = "c612edec-65a1-453e-94c5-39f8b2a65a3c"
                        order    = 1
                        parentId = "66929ea2-c016-4faf-b363-0117e9c66bf0"
                        props    = {
                            content    = {
                                label = {
                                    de   = "Übersicht"
                                    en   = "Overview"
                                    name = "overview"
                                }
                                name  = "overview"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tab"
                    }
                    cbf835ea-64d3-4bc8-b1ac-7e1e8b553b91   = {
                        id        = "cbf835ea-64d3-4bc8-b1ac-7e1e8b553b91"
                        is_system = false
                        order     = 20
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Vorname Rechnungsempfänger"
                                name                    = "vorname_rechnungsempfaenger"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    d0a4c856-498e-462d-bf74-ae842f4868d5   = {
                        id       = "d0a4c856-498e-462d-bf74-ae842f4868d5"
                        order    = 2
                        parentId = "c612edec-65a1-453e-94c5-39f8b2a65a3c"
                        props    = {
                            content    = {
                                name   = "products"
                                schema = "order"
                                title  = {
                                    de = "Produkte"
                                    en = "Products"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "products"
                    }
                    d260aff2-0c9d-4f6f-a61b-812df14da50b   = {
                        id        = "d260aff2-0c9d-4f6f-a61b-812df14da50b"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "e005d608-86d8-48a7-ae46-2ce0adcba87f"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    ddac54ad-3139-4c93-b396-158ab329bd2d   = {
                        id       = "ddac54ad-3139-4c93-b396-158ab329bd2d"
                        order    = 1
                        parentId = "4118e7e9-fa84-4c14-9aac-2e85ce87d10d"
                        props    = {
                            content    = {
                                label                   = {
                                    de = "Zahlungsinformationen"
                                }
                                name                    = "payment_method"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    df001d0d-32cd-42d2-ad42-c8e2553c2082   = {
                        id        = "df001d0d-32cd-42d2-ad42-c8e2553c2082"
                        is_system = false
                        order     = 22
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                name                    = "gewuenschter_lieferbeginn"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    e0798b6e-a492-4dda-86be-06031f9a2e8a   = {
                        id        = "e0798b6e-a492-4dda-86be-06031f9a2e8a"
                        is_system = false
                        order     = 19
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Titel Rechnungsempfänger"
                                name                    = "titel_rechnungsempfaenger"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    e6de5c51-eb7e-4911-9c52-d14634c2a64a   = {
                        id        = "e6de5c51-eb7e-4911-9c52-d14634c2a64a"
                        is_system = false
                        order     = 4
                        parentId  = "97877471-aa5f-4dc1-93aa-352cf46c032e"
                        props     = {
                            content    = {
                                label = {
                                    de = "Nachname"
                                    en = "Label"
                                }
                                value = {
                                    de = "{{order.billing_contact[contact:customer].last_name}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    e716e5ff-ceee-449c-881f-00f3d528d1fe   = {
                        id       = "e716e5ff-ceee-449c-881f-00f3d528d1fe"
                        order    = 2
                        parentId = "66929ea2-c016-4faf-b363-0117e9c66bf0"
                        props    = {
                            content    = {
                                label = {
                                    de   = "Details"
                                    en   = "Details"
                                    name = "details"
                                }
                                name  = "details"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tab"
                    }
                    f0011a16-bf2d-4170-85b2-f58bc2c88c1a   = {
                        id        = "f0011a16-bf2d-4170-85b2-f58bc2c88c1a"
                        is_system = false
                        order     = 3
                        parentId  = "86a9e946-9daf-4c18-8370-524faf53fe86"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Nur Naturstrom"
                                name                    = "nur_naturstrom"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "order"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Bestellung"
                        en = "Order"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "e005d608-86d8-48a7-ae46-2ce0adcba87f"
                is_public    = false
                is_system    = true
                order        = 19
                org_id       = "20000388"
                parentId     = "c97527d9-b9ae-450e-a33e-096f1856a018"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#orders"
                schema       = [
                    "contact",
                    "order",
                ]
                slug         = "orders"
            },
            {
                blocks       = {
                    "1d36c6c2-d0a4-4f8b-af4a-37e8c8366b40" = {
                        id       = "1d36c6c2-d0a4-4f8b-af4a-37e8c8366b40"
                        order    = 1
                        parentId = "a75b4a13-0982-41ce-b852-2a577a20657e"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "first_name"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contact"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    "23a81b88-9578-4d88-b803-ac210c2c3332" = {
                        id       = "23a81b88-9578-4d88-b803-ac210c2c3332"
                        order    = 2
                        parentId = "a75b4a13-0982-41ce-b852-2a577a20657e"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "last_name"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contact"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    "34d14f2e-6b62-478d-8914-69568c655e24" = {
                        id       = "34d14f2e-6b62-478d-8914-69568c655e24"
                        order    = 2
                        parentId = "09b874d5-89ca-4e34-a6b6-2482654e5bc1"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tabs"
                    }
                    "66fbf14b-f19c-47f8-9b11-b0e299bdb1d1" = {
                        id       = "66fbf14b-f19c-47f8-9b11-b0e299bdb1d1"
                        order    = 4
                        parentId = "a75b4a13-0982-41ce-b852-2a577a20657e"
                        props    = {
                            content    = {
                                label = {
                                    de = "Kontaktdetails"
                                    en = "Contact details"
                                }
                                name  = "contact_details"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    "7fabbe99-2473-4aa0-9d52-6eb551518c96" = {
                        id       = "7fabbe99-2473-4aa0-9d52-6eb551518c96"
                        order    = 1
                        parentId = "09b874d5-89ca-4e34-a6b6-2482654e5bc1"
                        props    = {
                            content    = {
                                name  = "contact"
                                title = {
                                    de = "Meine Daten"
                                    en = "Contact"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                    a75b4a13-0982-41ce-b852-2a577a20657e   = {
                        id       = "a75b4a13-0982-41ce-b852-2a577a20657e"
                        order    = 1
                        parentId = "34d14f2e-6b62-478d-8914-69568c655e24"
                        props    = {
                            content    = {
                                label = {
                                    de = "Übersicht"
                                    en = "Overview"
                                }
                                name  = "overview"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tab"
                    }
                    bce2da0f-3236-44f7-b32e-fcd67a69fc47   = {
                        id        = "bce2da0f-3236-44f7-b32e-fcd67a69fc47"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "09b874d5-89ca-4e34-a6b6-2482654e5bc1"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = [90mnull[0m[0m
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    c8d94f98-ca9e-4987-b8c8-925580e7079a   = {
                        id       = "c8d94f98-ca9e-4987-b8c8-925580e7079a"
                        order    = 2
                        parentId = "34d14f2e-6b62-478d-8914-69568c655e24"
                        props    = {
                            content    = {
                                label = {
                                    de = "Dokumente"
                                    en = "Documents"
                                }
                                name  = "documents"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tab"
                    }
                    e586b9d2-1a60-497e-b9b3-88cb71d48e26   = {
                        id       = "e586b9d2-1a60-497e-b9b3-88cb71d48e26"
                        order    = 2
                        parentId = "66fbf14b-f19c-47f8-9b11-b0e299bdb1d1"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "phone"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contact"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                    f25795ff-28ca-49e1-b4ed-8b505e063857   = {
                        id       = "f25795ff-28ca-49e1-b4ed-8b505e063857"
                        order    = 1
                        parentId = "c8d94f98-ca9e-4987-b8c8-925580e7079a"
                        props    = {
                            content    = {
                                page_size = "10"
                                schema    = "contact"
                                title     = {}
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "documents"
                    }
                    f991fc79-02e4-455b-ae19-abc6660ab000   = {
                        id       = "f991fc79-02e4-455b-ae19-abc6660ab000"
                        order    = 1
                        parentId = "66fbf14b-f19c-47f8-9b11-b0e299bdb1d1"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "email"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contact"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "attribute"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/a01d6b5e-90e8-4390-8d09-0f545b67b7a8/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/81b16dab-ca3b-47bc-b3e6-fb811bc81b36/Integration%2520Favicon.png"
                    }
                    label     = {
                        de = "Kontakt"
                        en = "Contact"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/36dfc5d9-ee6b-4c17-8e52-4e10c97d06b3/Integration%2520Favicon.png"
                        url     = "https://epilot-prod-user-content.s3.eu-central-1.amazonaws.com/20000388/1c583cdd-3ce5-445c-b582-725c56fc40e6/logo.svg"
                    }
                }
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "09b874d5-89ca-4e34-a6b6-2482654e5bc1"
                is_public    = false
                is_system    = true
                order        = 20
                org_id       = "20000388"
                parentId     = "64c6143d-3a2b-4242-a37f-70b113c9d00d"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#contact"
                schema       = [
                    "contact",
                ]
                slug         = "contact"
                visibility   = {
                    is_hidden = true
                }
            },
            {
                blocks       = {
                    "7e399915-3277-40fe-b737-3be7349c34da" = {
                        id        = "7e399915-3277-40fe-b737-3be7349c34da"
                        is_system = false
                        order     = 3
                        parentId  = "387aa233-d149-4918-b66b-4bb9bafa71da"
                        props     = {
                            content    = {
                                content_bottom_name = {
                                    de = "Erstelldatum: {{ticket._created_at}} Uhr"
                                }
                                destinationPageId   = "4c0065d2-c982-4811-92a3-c930bb60a8bd"
                                enable_search       = false
                                filter_target       = "923cab63-bce3-497d-8a29-cd500d32bc2e"
                                group_by            = "bearbeitungsstatus_anfrage"
                                group_by_order_by   = "asc"
                                group_size          = "10"
                                group_title         = {
                                    de = "Status: {{ticket.bearbeitungsstatus_anfrage}}"
                                }
                                main_content_name   = {
                                    de = "{{ticket._title}}"
                                    en = "{{ticket._title}}"
                                }
                                schema              = "ticket"
                                search_fields       = [
                                    "_title",
                                    "ticket_number",
                                    "linked_entities.contract_number",
                                ]
                                search_fields_keys  = [
                                    "ticket::_title",
                                    "ticket::ticket_number",
                                    "ticket::linked_entities::contract::contract_number",
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "entity_list"
                    }
                    "817ddeea-e07c-49c2-b309-ba85bf03c5e2" = {
                        id        = "817ddeea-e07c-49c2-b309-ba85bf03c5e2"
                        is_system = false
                        order     = 1
                        parentId  = "387aa233-d149-4918-b66b-4bb9bafa71da"
                        props     = {
                            content    = {
                                title = {
                                    de = "Übersicht Ihrer offenen Tickets"
                                    en = "Title"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    b24b496c-a315-4d1f-8772-5a12bf796420   = {
                        id        = "b24b496c-a315-4d1f-8772-5a12bf796420"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "387aa233-d149-4918-b66b-4bb9bafa71da"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                }
                content      = {
                    label = {
                        de = "Tickets"
                        en = "New Page"
                    }
                }
                domain       = "wilken-portal-sb.ecp.epilot.io"
                id           = "387aa233-d149-4918-b66b-4bb9bafa71da"
                is_public    = false
                is_system    = false
                order        = 21
                org_id       = "20000388"
                portal_id    = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3 = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#tickets"
                schema       = [
                    "contact",
                ]
                slug         = "tickets"
            },
            {
                blocks        = {
                    "0610bdba-cbee-4a75-b91e-752b2c546b53" = {
                        id        = "0610bdba-cbee-4a75-b91e-752b2c546b53"
                        is_system = false
                        order     = 2
                        parentId  = "49213cf3-ff90-496f-9dca-fdfc0465369e"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "tabs"
                    }
                    "4b65dbc0-b34f-4fd0-b73d-ac6e75327711" = {
                        id        = "4b65dbc0-b34f-4fd0-b73d-ac6e75327711"
                        is_system = false
                        order     = 1
                        parentId  = "49213cf3-ff90-496f-9dca-fdfc0465369e"
                        props     = {
                            content    = {
                                title = {
                                    de = "Firmadetails"
                                    en = "Account Details"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    "721c8a7d-5706-4845-96f8-0a94ab8edcd8" = {
                        id        = "721c8a7d-5706-4845-96f8-0a94ab8edcd8"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "49213cf3-ff90-496f-9dca-fdfc0465369e"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "7686cdcd-d493-4bac-8596-4b65ea5cda18" = {
                        id        = "7686cdcd-d493-4bac-8596-4b65ea5cda18"
                        is_system = false
                        order     = 1
                        parentId  = "a406779d-28c8-4237-905b-8b476428b9c4"
                        props     = {
                            content    = {
                                label = {
                                    de = "Firma"
                                    en = "Account"
                                }
                                value = {
                                    de = "{{account._title}}"
                                    en = "{{account._title}}"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    a406779d-28c8-4237-905b-8b476428b9c4   = {
                        id        = "a406779d-28c8-4237-905b-8b476428b9c4"
                        is_system = false
                        order     = 1
                        parentId  = "0610bdba-cbee-4a75-b91e-752b2c546b53"
                        props     = {
                            content    = {
                                label = {
                                    de = "Übersicht"
                                    en = "Overview"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "tab"
                    }
                    d6352111-b6ca-435a-809c-188aae93c598   = {
                        id        = "d6352111-b6ca-435a-809c-188aae93c598"
                        is_system = false
                        order     = 2
                        parentId  = "0610bdba-cbee-4a75-b91e-752b2c546b53"
                        props     = {
                            content    = {
                                label = {
                                    de = "Mehr"
                                    en = "More"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "tab"
                    }
                }
                content       = {
                    label = {
                        de = "Firma"
                        en = "Account"
                    }
                }
                design        = {}
                detail_schema = "account"
                domain        = "wilken-portal-sb.ecp.epilot.io"
                id            = "49213cf3-ff90-496f-9dca-fdfc0465369e"
                is_detail     = true
                is_public     = false
                is_system     = true
                order         = 22
                org_id        = "20000388"
                portal_id     = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3  = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#account"
                schema        = [
                    "contact",
                    "account",
                ]
                slug          = "account"
                visibility    = {}
            },
            {
                blocks        = {
                    "0341af9d-8d42-4c37-a101-50388828914b" = {
                        id        = "0341af9d-8d42-4c37-a101-50388828914b"
                        is_system = false
                        order     = 7
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Änderung Bankverbindung / SEPA"
                                }
                                value          = "ticket::20b324ab-97ae-4073-83ff-aed2616cc704"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute_group"
                    }
                    "07207f16-ccbb-419f-8435-e856c7e00abe" = {
                        id        = "07207f16-ccbb-419f-8435-e856c7e00abe"
                        is_system = false
                        order     = 4
                        parentId  = "782c0843-aada-4dfc-90b8-d7ea5bf2229b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Sonstiger Grund Außerordentliche Kündigung"
                                name                    = "sonstiger_grund_ausserordentliche_kuendigung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "099327e8-323a-4c03-9901-a5f018bf21f3" = {
                        id        = "099327e8-323a-4c03-9901-a5f018bf21f3"
                        is_system = false
                        order     = 3
                        parentId  = "782c0843-aada-4dfc-90b8-d7ea5bf2229b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Grund Außerordentliche Kündigung"
                                name                    = "grund_ausserordentliche_kuendigung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "0bcddd2e-5d53-4ab6-8177-5111a6fc3376" = {
                        id        = "0bcddd2e-5d53-4ab6-8177-5111a6fc3376"
                        is_system = false
                        order     = 3
                        parentId  = "c09a3114-2631-4e01-ba93-dc26c4657714"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Änderungsgrund"
                                name                    = "aenderungsgrund"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "0f93b7f9-b68a-49bd-a9e1-ef25b3cdd7bd" = {
                        id        = "0f93b7f9-b68a-49bd-a9e1-ef25b3cdd7bd"
                        is_system = false
                        order     = 13
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Kontaktanfrage"
                                }
                                value          = "ticket::72f5dea6-87c9-424f-9a9e-5aa50e5025c6"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute_group"
                    }
                    "213df7ed-6f5a-4375-bae9-d66b0a1671d6" = {
                        id        = "213df7ed-6f5a-4375-bae9-d66b0a1671d6"
                        is_system = false
                        order     = 8
                        parentId  = "782c0843-aada-4dfc-90b8-d7ea5bf2229b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Kontakt E-Mail-Adresse Kündigung"
                                name                    = "kontakt_emailadresse_kuendigung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "21b3c6e1-a15d-4235-aae4-53b845ebb59d" = {
                        id        = "21b3c6e1-a15d-4235-aae4-53b845ebb59d"
                        is_system = false
                        order     = 2
                        parentId  = "3a44a794-e5b9-49f4-809e-7af12ef6762b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Erwarteter Jahresverbrauch HT (in kWh)"
                                name                    = "erwarteter_jahresverbrauch_ht_in_kwh"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "2ad57305-da91-4765-a0cb-a501175ba29e" = {
                        id        = "2ad57305-da91-4765-a0cb-a501175ba29e"
                        is_system = false
                        order     = 2
                        parentId  = "0f93b7f9-b68a-49bd-a9e1-ef25b3cdd7bd"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Beschreibung des Anliegens"
                                name                    = "kontaktanfrage_beschreibung_des_anliegens"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "2b05345f-0565-405d-9219-35046ed9cf32" = {
                        id        = "2b05345f-0565-405d-9219-35046ed9cf32"
                        is_system = false
                        order     = 9
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Änderung Persönliche Informationen Geschäftspartner"
                                }
                                value          = "ticket::1cc6f9e4-1fb9-4e00-9894-ae9ae2ee5f6a"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute_group"
                    }
                    "2b6d7a1c-3b0c-4579-a3ee-a65f122b8d97" = {
                        id        = "2b6d7a1c-3b0c-4579-a3ee-a65f122b8d97"
                        is_system = false
                        order     = 5
                        parentId  = "0341af9d-8d42-4c37-a101-50388828914b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Neue Bankverbindung - Nur Gutschrift"
                                name                    = "neue_bankverbindung_nur_gutschrift"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "2da95404-549f-4d69-947e-68d51d15e35b" = {
                        id        = "2da95404-549f-4d69-947e-68d51d15e35b"
                        is_system = false
                        order     = 1
                        parentId  = "b40b9110-063c-4009-95f2-10aacb8cee8c"
                        props     = {
                            content    = {
                                label = {
                                    de = "Übersicht"
                                    en = "Overview"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "tab"
                    }
                    "32ff23e7-4157-44af-af73-cca032460044" = {
                        id        = "32ff23e7-4157-44af-af73-cca032460044"
                        is_system = false
                        order     = 1
                        parentId  = "782c0843-aada-4dfc-90b8-d7ea5bf2229b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Datum Kündigung"
                                name                    = "datum_kuendigung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "38123f76-45b1-4c39-9419-6de4e058d9d0" = {
                        id        = "38123f76-45b1-4c39-9419-6de4e058d9d0"
                        is_system = false
                        order     = 1
                        parentId  = "4c0065d2-c982-4811-92a3-c930bb60a8bd"
                        props     = {
                            content    = {
                                title = {
                                    de = "Ticketdetails"
                                    en = "Ticket Details"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    "3a44a794-e5b9-49f4-809e-7af12ef6762b" = {
                        id        = "3a44a794-e5b9-49f4-809e-7af12ef6762b"
                        is_system = false
                        order     = 14
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Tarifwechsel"
                                }
                                value          = "ticket::477c5dda-a234-400b-990c-e07841c62908"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute_group"
                    }
                    "3af04ccb-d3a7-4f7c-b91a-34a80d3ce92c" = {
                        id        = "3af04ccb-d3a7-4f7c-b91a-34a80d3ce92c"
                        isSystem  = false
                        is_system = true
                        order     = 1
                        parentId  = "4c0065d2-c982-4811-92a3-c930bb60a8bd"
                        props     = {
                            content    = {
                                description = {
                                    en = [90mnull[0m[0m
                                }
                                links       = [
                                    {
                                        label = {
                                            de = "FAQ"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-faq.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Datenschutzerklärung"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-datenschutz.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Impressum"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-impressum.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Barrierefreiheit"
                                        }
                                        url   = {
                                            de = "https://www.stadtwerk-barrierefreiheit.de"
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Youtube"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Instagram"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            de = "Facebook"
                                        }
                                        url   = {
                                            de = [90mnull[0m[0m
                                        }
                                    },
                                ]
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "footer"
                        type      = "footer"
                    }
                    "3bb73664-5f88-4e8e-9e61-c63c625ba3a3" = {
                        id        = "3bb73664-5f88-4e8e-9e61-c63c625ba3a3"
                        is_system = false
                        order     = 6
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Zeitpunkt der Änderung"
                                }
                                value          = "ticket::90913f87-fcc0-4c91-9da7-19db3729a5fc"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute_group"
                    }
                    "3d5d4f46-1c17-461f-a70d-62f3c2b760f4" = {
                        id        = "3d5d4f46-1c17-461f-a70d-62f3c2b760f4"
                        is_system = false
                        order     = 7
                        parentId  = "cfd0cd29-08f9-4ab9-8e62-672fbdf94f20"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Bankverbindung Schlussrechnung"
                                name                    = "bankverbindung_schlussrechnung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "3d6f4a28-cf2c-4fd3-b7c6-196dc7e7f684" = {
                        id        = "3d6f4a28-cf2c-4fd3-b7c6-196dc7e7f684"
                        is_system = false
                        order     = 4
                        parentId  = "0f93b7f9-b68a-49bd-a9e1-ef25b3cdd7bd"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "E-Mail-Adresse für Zusammenfassung"
                                name                    = "email_adresse_fuer_zusammenfassung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "429be4ca-82e2-4d23-9b56-dd7789fdb6fe" = {
                        id        = "429be4ca-82e2-4d23-9b56-dd7789fdb6fe"
                        is_system = false
                        order     = 6
                        parentId  = "782c0843-aada-4dfc-90b8-d7ea5bf2229b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Wer kündigt?"
                                name                    = "wer_kuendigt"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "459f2db0-64e0-4fc1-bf1e-737a5cfc4e4d" = {
                        id        = "459f2db0-64e0-4fc1-bf1e-737a5cfc4e4d"
                        is_system = false
                        order     = 5
                        parentId  = "782c0843-aada-4dfc-90b8-d7ea5bf2229b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Datum Gewünschtes Vertragsende"
                                name                    = "datum_gewuenschtes_vertragsende"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "4ecd2b3b-6917-4314-9837-c2de3756d31b" = {
                        id        = "4ecd2b3b-6917-4314-9837-c2de3756d31b"
                        is_system = false
                        order     = 6
                        parentId  = "3a44a794-e5b9-49f4-809e-7af12ef6762b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = {
                                    de = "Zugehörige Bestellnummer"
                                }
                                name                    = "linked_entities"
                                relation_attribute_name = "order_number"
                                relation_schema         = "order"
                                schema                  = "ticket"
                                type                    = "relation"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "605d8c04-b814-4186-bcb2-fa51e2026925" = {
                        id        = "605d8c04-b814-4186-bcb2-fa51e2026925"
                        is_system = false
                        order     = 4
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue = false
                                label          = {
                                    de = "Geschäftspartner"
                                    en = "Label"
                                }
                                value          = {
                                    de = "{{ticket.customer[contact:Vertragsinhaber]._title}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    "62120fc0-4398-4449-b46e-1087058de796" = {
                        id        = "62120fc0-4398-4449-b46e-1087058de796"
                        is_system = false
                        order     = 1
                        parentId  = "3a44a794-e5b9-49f4-809e-7af12ef6762b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Zählerart"
                                name                    = "zaehlerart"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "65c55823-2a78-41d5-a7fd-0ba11152b1b2" = {
                        id        = "65c55823-2a78-41d5-a7fd-0ba11152b1b2"
                        is_system = false
                        order     = 3
                        parentId  = "2b05345f-0565-405d-9219-35046ed9cf32"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Alte Telefonnummer"
                                name                    = "alte_telefonnummer"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "66a2b57d-3c85-431c-95ca-4fad017f350e" = {
                        id        = "66a2b57d-3c85-431c-95ca-4fad017f350e"
                        is_system = false
                        order     = 2
                        parentId  = "cfd0cd29-08f9-4ab9-8e62-672fbdf94f20"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Datum Auszug"
                                name                    = "datum_auszug"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "67cc5003-f65c-4341-91aa-5ac0addfec31" = {
                        id        = "67cc5003-f65c-4341-91aa-5ac0addfec31"
                        is_system = false
                        order     = 5
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Bearbeitungsstatus Anfrage"
                                name                    = "bearbeitungsstatus_anfrage"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "6b5fbca3-87c6-4757-885e-68fa492306ba" = {
                        id        = "6b5fbca3-87c6-4757-885e-68fa492306ba"
                        is_system = false
                        order     = 3
                        parentId  = "cfd0cd29-08f9-4ab9-8e62-672fbdf94f20"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Neue Adresse"
                                name                    = "neue_adresse"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "726c7147-2d51-4f57-8236-969e5af6c932" = {
                        id        = "726c7147-2d51-4f57-8236-969e5af6c932"
                        is_system = false
                        order     = 3
                        parentId  = "0341af9d-8d42-4c37-a101-50388828914b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Neue Bankverbindung - Forderung und Gutschrift"
                                name                    = "neue_bankverbindung_forderung_und_gutschrift"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "76257633-9571-4501-9d86-8048996d5bf7" = {
                        id        = "76257633-9571-4501-9d86-8048996d5bf7"
                        is_system = false
                        order     = 5
                        parentId  = "cfd0cd29-08f9-4ab9-8e62-672fbdf94f20"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Adresse Schlussrechnung"
                                name                    = "adresse_schlussrechnung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "78067000-b988-4808-a9ab-82665579e6fb" = {
                        id        = "78067000-b988-4808-a9ab-82665579e6fb"
                        is_system = false
                        order     = 3
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Kundenkonto"
                                    en = "Label"
                                }
                                value          = {
                                    de = "{{ticket.linked_entities[billing_account:Kundenkonto]._title}}"
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    "782c0843-aada-4dfc-90b8-d7ea5bf2229b" = {
                        id        = "782c0843-aada-4dfc-90b8-d7ea5bf2229b"
                        is_system = false
                        order     = 11
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Kündigung"
                                }
                                value          = "ticket::8b9f5e49-35cf-4856-86d5-5674026ad257"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute_group"
                    }
                    "7d8fce5a-cb8e-4fb0-85fc-c54a6092749c" = {
                        id        = "7d8fce5a-cb8e-4fb0-85fc-c54a6092749c"
                        is_system = false
                        order     = 3
                        parentId  = "3bb73664-5f88-4e8e-9e61-c63c625ba3a3"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Zieldatum Änderung"
                                name                    = "zieldatum_aenderung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "82817f7b-eef2-4997-945e-13fb0f4b9572" = {
                        id        = "82817f7b-eef2-4997-945e-13fb0f4b9572"
                        is_system = false
                        order     = 2
                        parentId  = "3bb73664-5f88-4e8e-9e61-c63c625ba3a3"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Schnellstmögliche Durchführung der Änderung"
                                name                    = "schnellstmoegliche_durchfuehrung_der_aenderung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "85402e07-7ee5-45ca-ab77-5bc0f4728001" = {
                        id        = "85402e07-7ee5-45ca-ab77-5bc0f4728001"
                        is_system = false
                        order     = 3
                        parentId  = "0f93b7f9-b68a-49bd-a9e1-ef25b3cdd7bd"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Zusammenfassung per E-Mail erwünscht"
                                name                    = "zusammenfassung_per_email_erwuenscht"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "8d840c96-865e-40e1-bdb9-8031959f618c" = {
                        id        = "8d840c96-865e-40e1-bdb9-8031959f618c"
                        is_system = false
                        order     = 2
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue          = false
                                name                    = "ticket_number"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "8e02cb8a-284b-46aa-bdd8-adf9c09b309a" = {
                        id        = "8e02cb8a-284b-46aa-bdd8-adf9c09b309a"
                        is_system = false
                        order     = 2
                        parentId  = "c09a3114-2631-4e01-ba93-dc26c4657714"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Neuer Abschlagsbetrag (in EUR)"
                                name                    = "neuer_abschlagsbetrag_in_eur"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "8f0d66d6-ffaf-46bf-9d09-891013344e79" = {
                        id        = "8f0d66d6-ffaf-46bf-9d09-891013344e79"
                        is_system = false
                        order     = 1
                        parentId  = "0f93b7f9-b68a-49bd-a9e1-ef25b3cdd7bd"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Anliegen"
                                name                    = "kontaktanfrage_anliegen"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "8f7a01ff-9ee9-4637-8d49-88fdd484c13b" = {
                        id        = "8f7a01ff-9ee9-4637-8d49-88fdd484c13b"
                        is_system = false
                        order     = 1
                        parentId  = "cfd0cd29-08f9-4ab9-8e62-672fbdf94f20"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Auszug zum Tag der Ticketerstellung"
                                name                    = "auszug_heute"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "94ee4bd5-499a-4c14-9c63-e153f57578c6" = {
                        id        = "94ee4bd5-499a-4c14-9c63-e153f57578c6"
                        is_system = false
                        order     = 3
                        parentId  = "3a44a794-e5b9-49f4-809e-7af12ef6762b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Erwarteter Jahresverbrauch NT (in kWh)"
                                name                    = "erwarteter_jahresverbrauch_nt_in_kwh"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "994fa4a5-1df8-4e98-851e-a26f27ebe3a2" = {
                        id        = "994fa4a5-1df8-4e98-851e-a26f27ebe3a2"
                        is_system = false
                        order     = 4
                        parentId  = "c09a3114-2631-4e01-ba93-dc26c4657714"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Sonstiger Änderungsgrund"
                                name                    = "sonstiger_aenderungsgrund"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    a67fc7bc-5ed0-4589-a925-3291c1500768   = {
                        id        = "a67fc7bc-5ed0-4589-a925-3291c1500768"
                        is_system = false
                        order     = 1
                        parentId  = "0341af9d-8d42-4c37-a101-50388828914b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Zahlweg"
                                name                    = "zahlweg"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    b40b9110-063c-4009-95f2-10aacb8cee8c   = {
                        id        = "b40b9110-063c-4009-95f2-10aacb8cee8c"
                        is_system = false
                        order     = 2
                        parentId  = "4c0065d2-c982-4811-92a3-c930bb60a8bd"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "tabs"
                    }
                    b63c4b67-e2cd-4994-87e6-9e2b0b5523de   = {
                        id        = "b63c4b67-e2cd-4994-87e6-9e2b0b5523de"
                        is_system = false
                        order     = 1
                        parentId  = "c827baab-1ed7-4e22-8f00-ea46ab455c09"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Neue Rechnungsadresse"
                                name                    = "neue_rechnungsadresse"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    b8d94f8c-6910-460d-9c42-089e41e8bbbc   = {
                        id        = "b8d94f8c-6910-460d-9c42-089e41e8bbbc"
                        is_system = false
                        order     = 6
                        parentId  = "cfd0cd29-08f9-4ab9-8e62-672fbdf94f20"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Auswahl Zahlungsdetails"
                                name                    = "auswahl_zahlungsdetails"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    c08133f1-d33b-4541-9f77-a7ccb11520bb   = {
                        id        = "c08133f1-d33b-4541-9f77-a7ccb11520bb"
                        is_system = false
                        order     = 4
                        parentId  = "2b05345f-0565-405d-9219-35046ed9cf32"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Neue Telefonnummer"
                                name                    = "neue_telefonnummer"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    c09a3114-2631-4e01-ba93-dc26c4657714   = {
                        id        = "c09a3114-2631-4e01-ba93-dc26c4657714"
                        is_system = false
                        order     = 12
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Änderung Abschlag"
                                }
                                value          = "ticket::3e16626a-c174-4fcb-b032-071a4b99411a"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute_group"
                    }
                    c50c8694-32ca-4b06-bed6-88506f8a0060   = {
                        id        = "c50c8694-32ca-4b06-bed6-88506f8a0060"
                        is_system = false
                        order     = 1
                        parentId  = "c09a3114-2631-4e01-ba93-dc26c4657714"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Aktueller Abschlagsbetrag (in EUR)"
                                name                    = "aktueller_abschlagsbetrag_in_eur"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    c827baab-1ed7-4e22-8f00-ea46ab455c09   = {
                        id        = "c827baab-1ed7-4e22-8f00-ea46ab455c09"
                        is_system = false
                        order     = 8
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Änderung Rechnungsadresse"
                                }
                                value          = "ticket::4132b61f-e9c4-41de-a663-78119f25480c"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute_group"
                    }
                    cd8f2d56-74d9-4d53-ae20-c096a63aa9d0   = {
                        id        = "cd8f2d56-74d9-4d53-ae20-c096a63aa9d0"
                        is_system = false
                        order     = 4
                        parentId  = "3a44a794-e5b9-49f4-809e-7af12ef6762b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Datum Gewünschter Liefertermin"
                                name                    = "datum_gewuenschter_liefertermin"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    cfd0cd29-08f9-4ab9-8e62-672fbdf94f20   = {
                        id        = "cfd0cd29-08f9-4ab9-8e62-672fbdf94f20"
                        is_system = false
                        order     = 10
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                hideEmptyValue = true
                                label          = {
                                    de = "Auszugsmeldung"
                                }
                                value          = "ticket::c0da040d-1800-47eb-adde-70a4e8d20b92"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute_group"
                    }
                    d630c531-fbf7-4838-a195-2a2bf990f8ec   = {
                        id        = "d630c531-fbf7-4838-a195-2a2bf990f8ec"
                        is_system = false
                        order     = 4
                        parentId  = "cfd0cd29-08f9-4ab9-8e62-672fbdf94f20"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Datum Einzug"
                                name                    = "datum_einzug"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    eb1822f5-3d33-4070-9b34-e5f8ce5de000   = {
                        id        = "eb1822f5-3d33-4070-9b34-e5f8ce5de000"
                        is_system = false
                        order     = 5
                        parentId  = "3a44a794-e5b9-49f4-809e-7af12ef6762b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Nur Naturstrom"
                                name                    = "nur_naturstrom"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    f19c3242-c6fa-4a6a-8fda-3df835c507df   = {
                        id        = "f19c3242-c6fa-4a6a-8fda-3df835c507df"
                        is_system = false
                        order     = 4
                        parentId  = "0341af9d-8d42-4c37-a101-50388828914b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Neue Bankverbindung - Nur Forderung"
                                name                    = "neue_bankverbindung_nur_forderung"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    f868c821-9c4c-452a-b078-8bfe77f176a3   = {
                        id        = "f868c821-9c4c-452a-b078-8bfe77f176a3"
                        is_system = false
                        order     = 2
                        parentId  = "782c0843-aada-4dfc-90b8-d7ea5bf2229b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Kündigung Grund"
                                name                    = "kuendigung_grund"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    fc98b6b4-f9fb-4e58-beeb-3e22ac389f9c   = {
                        id        = "fc98b6b4-f9fb-4e58-beeb-3e22ac389f9c"
                        is_system = false
                        order     = 1
                        parentId  = "2da95404-549f-4d69-947e-68d51d15e35b"
                        props     = {
                            content    = {
                                label = {
                                    de = "Ticket"
                                    en = "Ticket"
                                }
                                value = {
                                    de = "{{ticket._title}}"
                                    en = "{{ticket._title}}"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    fff1edfa-34a3-430f-85a1-1405bdac114d   = {
                        id        = "fff1edfa-34a3-430f-85a1-1405bdac114d"
                        is_system = false
                        order     = 2
                        parentId  = "0341af9d-8d42-4c37-a101-50388828914b"
                        props     = {
                            content    = {
                                hideEmptyValue          = true
                                label                   = "Auswahl Zahlungsmethode"
                                name                    = "auswahl_zahlungsmethode"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "ticket"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                }
                content       = {
                    label = {
                        de = "Ticket"
                        en = "Ticket"
                    }
                }
                design        = {}
                detail_schema = "ticket"
                domain        = "wilken-portal-sb.ecp.epilot.io"
                id            = "4c0065d2-c982-4811-92a3-c930bb60a8bd"
                is_detail     = true
                is_public     = false
                is_system     = true
                order         = 23
                org_id        = "20000388"
                portal_id     = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3  = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#ticket"
                schema        = [
                    "contact",
                    "ticket",
                ]
                slug          = "ticket"
                visibility    = {
                    is_hidden = false
                }
            },
            {
                blocks        = {
                    "07952701-183e-47a6-a566-78afd0baccbc" = {
                        id        = "07952701-183e-47a6-a566-78afd0baccbc"
                        is_system = false
                        order     = 1
                        parentId  = "a9a323e1-3ea9-44bb-8a3f-183eda28b05c"
                        props     = {
                            content    = {
                                label = {
                                    de = "Übersicht"
                                    en = "Overview"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "tab"
                    }
                    "513f6681-5acf-483d-852f-092db0763202" = {
                        id        = "513f6681-5acf-483d-852f-092db0763202"
                        is_system = false
                        order     = 1
                        parentId  = "21e263ab-acda-4b7a-8dac-9792b09aca4f"
                        props     = {
                            content    = {
                                title = {
                                    de = "Rechnungseinheitdetails"
                                    en = "Billing Account Details"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    "7f04095d-8293-4052-871b-ac196d7dc5c7" = {
                        id        = "7f04095d-8293-4052-871b-ac196d7dc5c7"
                        is_system = false
                        order     = 2
                        parentId  = "a9a323e1-3ea9-44bb-8a3f-183eda28b05c"
                        props     = {
                            content    = {
                                label = {
                                    de = "Mehr"
                                    en = "More"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "tab"
                    }
                    a9a323e1-3ea9-44bb-8a3f-183eda28b05c   = {
                        id        = "a9a323e1-3ea9-44bb-8a3f-183eda28b05c"
                        is_system = false
                        order     = 2
                        parentId  = "21e263ab-acda-4b7a-8dac-9792b09aca4f"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "tabs"
                    }
                    dafafe64-ec84-4795-ba9d-dfd2691b2014   = {
                        id        = "dafafe64-ec84-4795-ba9d-dfd2691b2014"
                        is_system = false
                        order     = 1
                        parentId  = "07952701-183e-47a6-a566-78afd0baccbc"
                        props     = {
                            content    = {
                                label = {
                                    de = "Rechnungseinheit"
                                    en = "Billing Account"
                                }
                                value = {
                                    de = "{{billing_account._title}}"
                                    en = "{{billing_account._title}}"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                }
                content       = {
                    label = {
                        de = "Rechnungseinheit"
                        en = "Billing Account"
                    }
                }
                design        = {}
                detail_schema = "billing_account"
                domain        = "wilken-portal-sb.ecp.epilot.io"
                id            = "21e263ab-acda-4b7a-8dac-9792b09aca4f"
                is_detail     = true
                is_public     = false
                is_system     = true
                order         = 24
                org_id        = "20000388"
                portal_id     = "2dfe4379-3066-420a-aa3e-f77626fea627"
                portal_sk_v3  = "PORTAL_PAGE#2dfe4379-3066-420a-aa3e-f77626fea627#billing_account"
                schema        = [
                    "contact",
                    "billing_account",
                ]
                slug          = "billing_account"
                visibility    = {}
            },
        ]
    )
    portal_id                    = "2dfe4379-3066-420a-aa3e-f77626fea627"
    portal_sk_v3                 = "PORTAL_CONFIG#2dfe4379-3066-420a-aa3e-f77626fea627"
    registration_identifiers     = jsonencode(
        [
            {
                name   = "email"
                schema = "contact"
            },
        ]
    )
    self_registration_setting    = "ALLOW_WITH_CONTACT_CREATION"
    triggered_journeys           = []
    user_account_self_management = false
}
