# epilot-portal_portal_config.portal_config_61352768ee944f8b8f9a84e740f790ea:
resource "epilot-portal_portal_config" "portal_config_61352768ee944f8b8f9a84e740f790ea" {
    access_token               = "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCIsImtpZCI6InQ4c3NkRUh4ZUZBbGltUUptNkFjMUhhOWZDbXEwdS05OV9xLWsyeUpKWTgifQ.eyJ0b2tlbl91c2UiOiJhY2Nlc3MiLCJhdWQiOiJlcGlsb3QiLCJ0b2tlbl9pZCI6InBvcnRhbF9yYmFfalMwZjBCeTBZVVVkVmtGWDAiLCJ0b2tlbl9uYW1lIjoiVG9rZW46IFRva2VuIEVORF9DVVNUT01FUl9QT1JUQUwiLCJvcmdfaWQiOiI3MzkyMjQiLCJ1c2VyX2lkIjoicG9ydGFsX3JiYV9qUzBmMEJ5MFlVVWRWa0ZYMCIsInRva2VuX3R5cGUiOiJwb3J0YWwiLCJjdXN0b206aXZ5X29yZ19pZCI6IjczOTIyNCIsImN1c3RvbTppdnlfdXNlcl9pZCI6InBvcnRhbF9yYmFfalMwZjBCeTBZVVVkVmtGWDAiLCJpc3MiOiJodHRwczovL2FjY2Vzcy10b2tlbi5kZXYuc2xzLmVwaWxvdC5pby92MS9hY2Nlc3MtdG9rZW5zIiwiaWF0IjoxNzU5OTMxMzg4fQ.J9Ikai519BBTDTH6cb8zbRXW322wmJ4BY5EfE7Uos1d-87vbEKGRHFcWbmRng6GdDJNTJzd4m6eKnBlS7ARR6nyhjwAWAY3zeslu79isQrTLUfCtwJrxrp_Nesvq-rlHZ73Ze5WPphUxDaFyPuu-CH75KcQaZQINxrJyKHpK8SGNKjhidtVGzlvnkrtcmFsJX8GVRStbQ8g5bN1n8BdeojeSh5f0kxH9Horwx43sZAUqQBJprPs3S344lEEqQHj752nKKUiKmkVv6_unhCeryDaXtFoNg4d1uW9B1CMB5UXbiHtPaNOJeIEzifOtFK0Hg89uiKLHxwM6wbTwE8FsHQ"
    advanced_mfa               = {
        enabled = false
    }
    auth_settings              = {
        passwordless_login      = {
            enabled = false
        }
        preferred_sso_providers = []
    }
    cognito_details            = {
        cognito_user_pool_arn       = "arn:aws:cognito-idp:eu-central-1:912468240823:userpool/eu-central-1_ASauSlhLe"
        cognito_user_pool_client_id = "5ktsngpatvqihg46rfaj631l14"
        cognito_user_pool_id        = "eu-central-1_ASauSlhLe"
        password_policy             = {
            minimum_length    = 8
            require_lowercase = true
            require_numbers   = true
            require_symbols   = true
            require_uppercase = true
        }
    }
    config                     = jsonencode(
        {
            available_languages  = [
                "english",
                "german",
            ]
            externalLinks        = [
                {
                    id    = "de733614-e260-410e-9785-dfdd456ce927"
                    label = {
                        de = "fdfdfdfd"
                        en = "dfdfdfd"
                    }
                    link  = "https://portal.dev.epilot.cloud/journey-app/?journeyId=0dea62e0-19cd-11f0-a761-094a74ff5355"
                    type  = "journey"
                },
            ]
            login                = {
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
            register             = {
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
            teasers              = {
                left = {
                    show       = true
                    showButton = true
                }
            }
            translationOverrides = {
                en = {
                    "welcome_banner.login.information.two.description" = "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam 1231323123232"
                }
            }
        }
    )
    contact_identifiers        = []
    design_id                  = "0ddf54b6-4f37-4afd-8bf5-0c26aec671ac"
    domain                     = "end-customer-portal.ecp.dev.epilot.io"
    email_templates            = {
        confirm_account                   = "6a19b420-986b-41f9-a4c5-f53399d1d77c"
        confirm_email_update              = "7755b48b-8bef-4da2-8757-8f614822637b"
        forgot_password                   = "b5befec4-541f-4a4a-8973-b4280bae1ffe"
        invitation                        = "abbfba5a-e4b2-43c3-8d14-f2b2c2a01b89"
        journey_sign_in_one_time_password = "0505fccf-23f2-43b8-9f73-0190b62d9211"
        journey_sign_up                   = "3b1214f7-2e8d-44a4-a05a-7828a20eae8a"
        on_doc_upload                     = "44c2c734-d134-4744-bb91-0cdc56bf7ab0"
        on_map_a_pending_user             = "11ffbab7-5a58-41dd-9e30-55cb72614059"
        on_new_quote                      = "1599800f-d639-49c6-a638-3aa56cb70b94"
        on_workflow_step_assigned         = "926ff9bc-aad9-43c7-b2f8-e066dfb582dc"
        verify_code_to_set_password       = "8544ac65-9b31-45aa-9417-e8513c348063"
    }
    enabled                    = true
    entity_actions             = [
        {
            action_label = {
                de = ""
                en = "ddf"
            }
            journey_id   = "82499d00-3245-11f0-8daa-e52ab772b837"
            slug         = "contract"
        },
    ]
    extensions                 = [
        {
            id      = "omnibill"
            options = {
                "omnibill_api_url" = "https://europe-west3-cop-tst-twl.cloudfunctions.net"
                "omnibill_ui_url"  = "https://twl-wpp.web.app"
            }
            status  = "enabled"
        },
        {
            id      = "omnibill-dynamic-tariffs"
            options = {
                "omnibill_api_url" = "https://europe-west3-twl-zvt-tst.cloudfunctions.net"
                "omnibill_ui_url"  = "https://dyn-tarife-twl.web.app"
            }
            status  = "enabled"
        },
    ]
    feature_flags              = jsonencode(
        {
            approvalState                      = true
            dynamicTariff                      = true
            externalLinksIcons                 = true
            journeyTriggers                    = true
            portalAnalytics                    = false
            portalSSO                          = true
            portalsAddressesPaymentsTimeSlices = true
            useAdvancedMfaOnPortals            = true
        }
    )
    feature_settings           = {
        change_due_date = true
        new_design      = true
        start_page      = true
    }
    grants                     = jsonencode(
        [
            {
                action   = "entity:*"
                resource = "billing_event:*"
            },
            {
                action   = "entity:*"
                resource = "opportunity:*"
            },
            {
                action   = "entity:*"
                resource = "order:*"
            },
            {
                action   = "entity:*"
                resource = "product:*"
            },
            {
                action   = "entity:*"
                resource = "price:*"
            },
            {
                action   = "entity:capability:*"
                resource = "order_items:*"
            },
            {
                action   = "entity:view"
                resource = "contract:*"
            },
            {
                action   = "entity:edit"
                resource = "contract:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:Payment Details:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:Commodity Information:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:Address Information:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:Termination:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:Customer Information:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:Order:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:Contract Conditions:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:Installment Information:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:Meters:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:_ungrouped:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:General Details:contract_name"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:General Details:assignee"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:General Details:_acl.view"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:General Details:status"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:General Details:description"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:General Details:start_date"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:General Details:end_date"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:General Details:old_portal_user"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:General Details:churn_risk"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:General Details:custom_link"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:Payment Details:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:Commodity Information:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:Address Information:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:Termination:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:Customer Information:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:Order:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:Contract Conditions:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:Installment Information:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:Meters:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:_ungrouped:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:General Details:contract_name"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:General Details:assignee"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:General Details:_acl.view"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:General Details:status"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:General Details:description"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:General Details:start_date"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:General Details:end_date"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:General Details:old_portal_user"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:General Details:churn_risk"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:General Details:custom_link"
            },
            {
                action   = "entity:create"
                resource = "file"
            },
            {
                action   = "entity:delete"
                resource = "file:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "file:*:*"
            },
            {
                action   = "entity:*"
                effect   = "allow"
                resource = "contact:*"
            },
            {
                action   = "entity:edit"
                resource = "meter:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "meter:*:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "meter_counter:*:*"
            },
            {
                action   = "meter_reading:*"
                resource = "*"
            },
            {
                action   = "entity:view"
                resource = "meter:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "meter:*:*"
            },
            {
                action   = "entity:view"
                resource = "meter_counter:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "meter_counter:*:*"
            },
            {
                action   = "entity:view"
                resource = "file:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "file:*:*"
            },
            {
                action   = "entity:attribute:view"
                resource = "contract:ed942ab3-82aa-4d35-b09d-6529950d3b35:*"
            },
            {
                action   = "entity:attribute:edit"
                resource = "contract:ed942ab3-82aa-4d35-b09d-6529950d3b35:*"
            },
        ]
    )
    images                     = {
        order_left_teaser = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/466f1c9f-e527-4da9-807c-847f49194d79/mosaic-energy-green.png"
    }
    is_epilot_domain           = true
    is_v3_item                 = false
    meter_reading_grace_period = 30
    name                       = "end-customer-portal"
    organization_id            = "739224"
    origin                     = "END_CUSTOMER_PORTAL"
    pages                      = jsonencode(
        [
            {
                blocks       = {
                    "26e97437-c3b7-44ea-846c-26d56a98379d" = {
                        id        = "26e97437-c3b7-44ea-846c-26d56a98379d"
                        is_system = true
                        order     = 1
                        parentId  = "8c0e6bef-1d53-4b0f-802f-60f877b68f93"
                        props     = {
                            content    = {
                                name  = "sign_in_changed"
                                title = {
                                    de = "Anmelden"
                                    en = "Sign In Changed"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "title"
                    }
                    "56845fe3-4b55-41b7-917c-e796c37efd1a" = {
                        id        = "56845fe3-4b55-41b7-917c-e796c37efd1a"
                        is_system = true
                        order     = 4
                        parentId  = "8c0e6bef-1d53-4b0f-802f-60f877b68f93"
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
                    "7d608b27-31fa-442c-b2be-8c9c7f5db4ae" = {
                        id        = "7d608b27-31fa-442c-b2be-8c9c7f5db4ae"
                        is_system = true
                        order     = 2
                        parentId  = "8c0e6bef-1d53-4b0f-802f-60f877b68f93"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "login_form"
                    }
                    "84b68ee3-6164-4588-aa47-f4da19a6d0f4" = {
                        id        = "84b68ee3-6164-4588-aa47-f4da19a6d0f4"
                        isSystem  = true
                        is_system = false
                        order     = 3
                        parentId  = "8c0e6bef-1d53-4b0f-802f-60f877b68f93"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    e6117f06-26ab-4bbd-9fb4-d4528eeac082   = {
                        id        = "e6117f06-26ab-4bbd-9fb4-d4528eeac082"
                        is_system = true
                        order     = 1
                        parentId  = "8c0e6bef-1d53-4b0f-802f-60f877b68f93"
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Anmelden"
                        en = "Login"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "8c0e6bef-1d53-4b0f-802f-60f877b68f93"
                is_public    = true
                is_system    = true
                order        = 1
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#login"
                slug         = "login"
                visibility   = {}
            },
            {
                blocks       = {
                    "16be03ff-499f-4441-8507-483e9b9ec0f5" = {
                        id        = "16be03ff-499f-4441-8507-483e9b9ec0f5"
                        is_system = true
                        order     = 4
                        parentId  = "f77b21cc-5f2c-4102-80f1-6a27501f89db"
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
                    "22a19144-eee3-4945-b977-bb7596ede64d" = {
                        id        = "22a19144-eee3-4945-b977-bb7596ede64d"
                        is_system = true
                        order     = 3
                        parentId  = "f77b21cc-5f2c-4102-80f1-6a27501f89db"
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
                    "4f49d29e-28e3-4e4a-9110-d0c7dcec463f" = {
                        id        = "4f49d29e-28e3-4e4a-9110-d0c7dcec463f"
                        is_system = true
                        order     = 1
                        parentId  = "f77b21cc-5f2c-4102-80f1-6a27501f89db"
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
                    b2122094-6211-43fd-9e41-95ac592c0702   = {
                        id        = "b2122094-6211-43fd-9e41-95ac592c0702"
                        isSystem  = true
                        is_system = false
                        order     = 5
                        parentId  = "f77b21cc-5f2c-4102-80f1-6a27501f89db"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    f4411e40-e4f4-4b43-bd19-edf50c7a097b   = {
                        id        = "f4411e40-e4f4-4b43-bd19-edf50c7a097b"
                        is_system = true
                        order     = 2
                        parentId  = "f77b21cc-5f2c-4102-80f1-6a27501f89db"
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Registrieren"
                        en = "Register"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "f77b21cc-5f2c-4102-80f1-6a27501f89db"
                is_public    = true
                is_system    = true
                order        = 2
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#register"
                slug         = "register"
                visibility   = {}
            },
            {
                blocks       = {
                    "099dac3b-d978-4f07-b804-55aeeaee8a35" = {
                        id        = "099dac3b-d978-4f07-b804-55aeeaee8a35"
                        is_system = true
                        order     = 5
                        parentId  = "6c253439-fce1-4d67-9341-26108d46d2e5"
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
                    "4e8208ae-fe6f-4ebf-b21f-5d4dc1511191" = {
                        id        = "4e8208ae-fe6f-4ebf-b21f-5d4dc1511191"
                        isSystem  = true
                        is_system = false
                        order     = 1
                        parentId  = "6c253439-fce1-4d67-9341-26108d46d2e5"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    "65c9e9ef-24fb-4da2-b14c-2c706eee7f44" = {
                        id        = "65c9e9ef-24fb-4da2-b14c-2c706eee7f44"
                        is_system = true
                        order     = 3
                        parentId  = "6c253439-fce1-4d67-9341-26108d46d2e5"
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
                    "69847908-057c-4575-8299-097aba439f8a" = {
                        id        = "69847908-057c-4575-8299-097aba439f8a"
                        is_system = true
                        order     = 2
                        parentId  = "6c253439-fce1-4d67-9341-26108d46d2e5"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    "77c2899d-b714-4fc3-92fe-52dfc4a5d705" = {
                        id        = "77c2899d-b714-4fc3-92fe-52dfc4a5d705"
                        is_system = true
                        order     = 4
                        parentId  = "6c253439-fce1-4d67-9341-26108d46d2e5"
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
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Ausstehendes Konto"
                        en = "Pending account"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "6c253439-fce1-4d67-9341-26108d46d2e5"
                is_public    = true
                is_system    = true
                order        = 3
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#pending-account"
                slug         = "pending-account"
                visibility   = {}
            },
            {
                blocks       = {
                    "4a9d5af4-0c06-405d-8639-ad7751a7b11c" = {
                        id        = "4a9d5af4-0c06-405d-8639-ad7751a7b11c"
                        is_system = true
                        order     = 4
                        parentId  = "7efa422c-6404-4779-8aaa-359accc38273"
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
                                                                text    = "Klicke auf den Link in der E-Mail, um dein Konto zu aktivieren. Test"
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
                    "59944d57-0ece-49a0-b70c-af344a357b39" = {
                        id        = "59944d57-0ece-49a0-b70c-af344a357b39"
                        isSystem  = true
                        is_system = false
                        order     = 1
                        parentId  = "7efa422c-6404-4779-8aaa-359accc38273"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    "73024eaa-35f0-44f7-80f1-0fab9febe27b" = {
                        id        = "73024eaa-35f0-44f7-80f1-0fab9febe27b"
                        is_system = true
                        order     = 2
                        parentId  = "7efa422c-6404-4779-8aaa-359accc38273"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    "859128c4-126f-451d-aac1-d4daace2d2bd" = {
                        id        = "859128c4-126f-451d-aac1-d4daace2d2bd"
                        is_system = true
                        order     = 3
                        parentId  = "7efa422c-6404-4779-8aaa-359accc38273"
                        props     = {
                            content    = {
                                name  = "aktivierungslink_gesendet"
                                title = {
                                    de = "Aktivierungslink gesendet"
                                    en = "Activation link sent"
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Aktivierung registrieren"
                        en = "Register activation"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "7efa422c-6404-4779-8aaa-359accc38273"
                is_public    = true
                is_system    = true
                order        = 4
                org_id       = "739224"
                parentId     = "f77b21cc-5f2c-4102-80f1-6a27501f89db"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#activation"
                slug         = "activation"
                visibility   = {}
            },
            {
                blocks       = {
                    "077c0a37-2636-47d4-9729-47bdefb93091" = {
                        id        = "077c0a37-2636-47d4-9729-47bdefb93091"
                        is_system = true
                        order     = 1
                        parentId  = "be407f01-4293-4a6d-8ca9-e4b00bc9a4d3"
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
                    "1cd5b5f2-2ead-4fe4-b0b2-d98bd430e784" = {
                        id        = "1cd5b5f2-2ead-4fe4-b0b2-d98bd430e784"
                        is_system = true
                        order     = 3
                        parentId  = "be407f01-4293-4a6d-8ca9-e4b00bc9a4d3"
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
                    "511441d0-81e8-4615-a328-49536ae32b06" = {
                        id        = "511441d0-81e8-4615-a328-49536ae32b06"
                        isSystem  = true
                        is_system = false
                        order     = 2
                        parentId  = "be407f01-4293-4a6d-8ca9-e4b00bc9a4d3"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    "575a8a32-e03a-49ce-bf2b-5b1040616681" = {
                        id        = "575a8a32-e03a-49ce-bf2b-5b1040616681"
                        is_system = true
                        order     = 2
                        parentId  = "be407f01-4293-4a6d-8ca9-e4b00bc9a4d3"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "forgot_password_form"
                    }
                    a5c2d347-902c-441f-983a-971172b9f3d3   = {
                        id        = "a5c2d347-902c-441f-983a-971172b9f3d3"
                        is_system = true
                        order     = 1
                        parentId  = "be407f01-4293-4a6d-8ca9-e4b00bc9a4d3"
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Passwort vergessen"
                        en = "Forgot password"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "be407f01-4293-4a6d-8ca9-e4b00bc9a4d3"
                is_public    = true
                is_system    = true
                order        = 4
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#forgot-password"
                slug         = "forgot-password"
                visibility   = {}
            },
            {
                blocks       = {
                    "087e3aea-4fb3-47bd-8334-6dc7c8763d90" = {
                        id        = "087e3aea-4fb3-47bd-8334-6dc7c8763d90"
                        is_system = true
                        order     = 5
                        parentId  = "380ac554-bad1-4150-94fc-31a53c689744"
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
                    cb5363d8-e0b0-4d5a-abf4-9cdbcd251553   = {
                        id        = "cb5363d8-e0b0-4d5a-abf4-9cdbcd251553"
                        isSystem  = true
                        is_system = false
                        order     = 1
                        parentId  = "380ac554-bad1-4150-94fc-31a53c689744"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    e663ed94-c7b1-4378-a538-32915ad8e2dd   = {
                        id        = "e663ed94-c7b1-4378-a538-32915ad8e2dd"
                        is_system = true
                        order     = 2
                        parentId  = "380ac554-bad1-4150-94fc-31a53c689744"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    ed2361f8-3753-408c-b66c-a93785b53141   = {
                        id        = "ed2361f8-3753-408c-b66c-a93785b53141"
                        is_system = true
                        order     = 4
                        parentId  = "380ac554-bad1-4150-94fc-31a53c689744"
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
                    f031e54a-d9bf-4ce4-885d-a0ed0bac9611   = {
                        id        = "f031e54a-d9bf-4ce4-885d-a0ed0bac9611"
                        is_system = true
                        order     = 3
                        parentId  = "380ac554-bad1-4150-94fc-31a53c689744"
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
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Registrierung erfolgreich"
                        en = "Register success"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "380ac554-bad1-4150-94fc-31a53c689744"
                is_public    = true
                is_system    = true
                order        = 5
                org_id       = "739224"
                parentId     = "f77b21cc-5f2c-4102-80f1-6a27501f89db"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#success"
                slug         = "success"
                visibility   = {}
            },
            {
                blocks       = {
                    "9a33b56f-17cc-46d4-a55e-4bb05612050a" = {
                        id        = "9a33b56f-17cc-46d4-a55e-4bb05612050a"
                        is_system = true
                        order     = 4
                        parentId  = "769fb512-2ded-4416-a4d4-1cf02efb1566"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "set_password_new_email_form"
                    }
                    b04d3c1f-251d-4852-9b6f-fb0587a5d2a8   = {
                        id        = "b04d3c1f-251d-4852-9b6f-fb0587a5d2a8"
                        is_system = true
                        order     = 2
                        parentId  = "769fb512-2ded-4416-a4d4-1cf02efb1566"
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
                    f055a527-c5e0-49af-b244-bf7052755561   = {
                        id        = "f055a527-c5e0-49af-b244-bf7052755561"
                        isSystem  = true
                        is_system = false
                        order     = 3
                        parentId  = "769fb512-2ded-4416-a4d4-1cf02efb1566"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    f6091e5d-b3f9-4f6b-aa2e-0ef869a2da48   = {
                        id        = "f6091e5d-b3f9-4f6b-aa2e-0ef869a2da48"
                        is_system = true
                        order     = 1
                        parentId  = "769fb512-2ded-4416-a4d4-1cf02efb1566"
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Neue E-Mail"
                        en = "New email"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "769fb512-2ded-4416-a4d4-1cf02efb1566"
                is_public    = true
                is_system    = true
                order        = 5
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#new-email"
                slug         = "new-email"
                visibility   = {}
            },
            {
                blocks       = {
                    "3fe1b992-0b8d-4908-a694-7aca6d31c020" = {
                        id        = "3fe1b992-0b8d-4908-a694-7aca6d31c020"
                        is_system = true
                        order     = 1
                        parentId  = "61ad16c2-19ba-44c7-846b-9c291ec85157"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    "856accff-9aae-45aa-b64f-a097766e99df" = {
                        id        = "856accff-9aae-45aa-b64f-a097766e99df"
                        is_system = true
                        order     = 2
                        parentId  = "61ad16c2-19ba-44c7-846b-9c291ec85157"
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
                    b3fb12ff-0bc8-42f9-8584-3724885523a6   = {
                        id        = "b3fb12ff-0bc8-42f9-8584-3724885523a6"
                        is_system = true
                        order     = 4
                        parentId  = "61ad16c2-19ba-44c7-846b-9c291ec85157"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "confirm_email_form"
                    }
                    b8d7ef74-2bf2-441a-8772-ec1fe0db1536   = {
                        id        = "b8d7ef74-2bf2-441a-8772-ec1fe0db1536"
                        isSystem  = true
                        is_system = false
                        order     = 5
                        parentId  = "61ad16c2-19ba-44c7-846b-9c291ec85157"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    facee478-1de2-416e-8d2f-5fc524312264   = {
                        id        = "facee478-1de2-416e-8d2f-5fc524312264"
                        is_system = true
                        order     = 3
                        parentId  = "61ad16c2-19ba-44c7-846b-9c291ec85157"
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
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "E-Mail bestätigen"
                        en = "Confirm email"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "61ad16c2-19ba-44c7-846b-9c291ec85157"
                is_public    = true
                is_system    = true
                order        = 6
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#confirm-email"
                slug         = "confirm-email"
                visibility   = {}
            },
            {
                blocks       = {
                    "2e285786-a4e6-4650-bd40-8de5b82588d6" = {
                        id        = "2e285786-a4e6-4650-bd40-8de5b82588d6"
                        is_system = true
                        order     = 4
                        parentId  = "314eec86-50eb-4c0f-abaa-8f67b60d822b"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "forgot_password_change_form"
                    }
                    "5790df03-2620-4913-9f37-57458cca5f08" = {
                        id        = "5790df03-2620-4913-9f37-57458cca5f08"
                        is_system = true
                        order     = 1
                        parentId  = "314eec86-50eb-4c0f-abaa-8f67b60d822b"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    "749b927b-5f39-4517-a434-58d230894493" = {
                        id        = "749b927b-5f39-4517-a434-58d230894493"
                        is_system = true
                        order     = 2
                        parentId  = "314eec86-50eb-4c0f-abaa-8f67b60d822b"
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
                    "8242833b-8306-4b74-a113-f6a5bf6d8875" = {
                        id        = "8242833b-8306-4b74-a113-f6a5bf6d8875"
                        isSystem  = true
                        is_system = false
                        order     = 3
                        parentId  = "314eec86-50eb-4c0f-abaa-8f67b60d822b"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Passwort ändern"
                        en = "Change password"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "314eec86-50eb-4c0f-abaa-8f67b60d822b"
                is_public    = true
                is_system    = true
                order        = 7
                org_id       = "739224"
                parentId     = "be407f01-4293-4a6d-8ca9-e4b00bc9a4d3"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#change"
                slug         = "change"
                visibility   = {}
            },
            {
                blocks       = {
                    "7447c213-7676-470f-bd2b-70bcb765abe6" = {
                        id        = "7447c213-7676-470f-bd2b-70bcb765abe6"
                        isSystem  = false
                        is_system = false
                        order     = 1
                        parentId  = "5af78a13-8bd5-4441-b0b7-47519ed76fee"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    "92e65f37-71a1-41e1-8cc2-1cfce31e30da" = {
                        id        = "92e65f37-71a1-41e1-8cc2-1cfce31e30da"
                        is_system = false
                        order     = 2
                        parentId  = "5af78a13-8bd5-4441-b0b7-47519ed76fee"
                        props     = {
                            content    = {
                                title = {
                                    de = "Hallo, {{Kundenansprache}}"
                                    en = "Title"
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Übersicht"
                        en = "Overview"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "5af78a13-8bd5-4441-b0b7-47519ed76fee"
                is_system    = true
                order        = 7
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#dashboard"
                schema       = [
                    "contact",
                ]
                slug         = "dashboard"
                visibility   = {
                    is_hidden = false
                }
            },
            {
                blocks       = {
                    "0b83324b-677d-4bee-9d83-fae070dcfa07" = {
                        id       = "0b83324b-677d-4bee-9d83-fae070dcfa07"
                        order    = 1
                        parentId = "b81c8824-257b-4032-81ab-0ecbaa7f51c4"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "billing_period"
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
                    "0f1cd24f-c3c8-4b0e-ba82-21daf6b08585" = {
                        id       = "0f1cd24f-c3c8-4b0e-ba82-21daf6b08585"
                        order    = 3
                        parentId = "b81c8824-257b-4032-81ab-0ecbaa7f51c4"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "billing_due_day"
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
                    "166f5c8d-2417-4fc7-9fec-55d048704e78" = {
                        id       = "166f5c8d-2417-4fc7-9fec-55d048704e78"
                        order    = 6
                        parentId = "9c00cb99-0056-46a0-831a-df05cd24d966"
                        props    = {
                            content    = {
                                label = {
                                    de = "Zahlungsmethode"
                                    en = "Payment method"
                                }
                                name  = "payment_method"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    "1e262973-817f-4e52-b56e-e099b013dd26" = {
                        id       = "1e262973-817f-4e52-b56e-e099b013dd26"
                        order    = 2
                        parentId = "76180554-54d9-4257-aab7-b3d236a2d014"
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
                    "2a0888e5-5605-4606-ae2f-2d19ea49f35e" = {
                        id       = "2a0888e5-5605-4606-ae2f-2d19ea49f35e"
                        order    = 5
                        parentId = "9c00cb99-0056-46a0-831a-df05cd24d966"
                        props    = {
                            content    = {
                                title = {
                                    de = "Aktionen"
                                    en = "Actions"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "journey_actions"
                    }
                    "37a3d6c5-0ddc-4587-b18d-f20c9573013f" = {
                        id       = "37a3d6c5-0ddc-4587-b18d-f20c9573013f"
                        order    = 2
                        parentId = "e230de15-9121-4170-92ef-503c937ad145"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "billing_address"
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
                    "3f5e80f9-a618-4cff-a1e9-3e716558fa87" = {
                        id              = "3f5e80f9-a618-4cff-a1e9-3e716558fa87"
                        order           = 4
                        parentId        = "9de2c9d8-a443-4cf8-a250-b03a250b5237"
                        props           = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section         = "main"
                        top_level_block = true
                        type            = "tabs"
                    }
                    "52920ccf-b8db-42a4-964c-038f0f4cdaad" = {
                        id       = "52920ccf-b8db-42a4-964c-038f0f4cdaad"
                        order    = 2
                        parentId = "b81c8824-257b-4032-81ab-0ecbaa7f51c4"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "renewal_duration_amount"
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
                    "5432af4d-01da-47a4-b65c-a746f6073603" = {
                        id        = "5432af4d-01da-47a4-b65c-a746f6073603"
                        is_system = false
                        order     = 5
                        parentId  = "9de2c9d8-a443-4cf8-a250-b03a250b5237"
                        props     = {
                            content    = {
                                label = {
                                    de = "Beschriftung"
                                    en = "{{contact.address[Primary]}}"
                                }
                                name  = "contact_address_primary"
                                value = "{{contract.contract_name}} - {{contact.first_name}}"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    "5c31b57e-fd6b-4af2-97c5-5c7efd3911b1" = {
                        id       = "5c31b57e-fd6b-4af2-97c5-5c7efd3911b1"
                        order    = 1
                        parentId = "166f5c8d-2417-4fc7-9fec-55d048704e78"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "payment"
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
                    "6e7234b6-b882-4e4a-b4a0-cefc010eab66" = {
                        id       = "6e7234b6-b882-4e4a-b4a0-cefc010eab66"
                        order    = 1
                        parentId = "76180554-54d9-4257-aab7-b3d236a2d014"
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
                    "76180554-54d9-4257-aab7-b3d236a2d014" = {
                        id       = "76180554-54d9-4257-aab7-b3d236a2d014"
                        order    = 7
                        parentId = "9c00cb99-0056-46a0-831a-df05cd24d966"
                        props    = {
                            content    = {
                                label = {
                                    de = "Kontakte"
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
                    "80641aef-8d23-4534-9080-0e906d4749f2" = {
                        id       = "80641aef-8d23-4534-9080-0e906d4749f2"
                        order    = 1
                        parentId = "e230de15-9121-4170-92ef-503c937ad145"
                        props    = {
                            content    = {
                                allowedSchemas          = []
                                hideEmptyValue          = false
                                label                   = [90mnull[0m[0m
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
                    "9c00cb99-0056-46a0-831a-df05cd24d966" = {
                        id       = "9c00cb99-0056-46a0-831a-df05cd24d966"
                        order    = 1
                        parentId = "3f5e80f9-a618-4cff-a1e9-3e716558fa87"
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
                    a3e40b34-0cad-4be7-a321-0caa7da8503e   = {
                        id       = "a3e40b34-0cad-4be7-a321-0caa7da8503e"
                        order    = 5
                        parentId = "3f5e80f9-a618-4cff-a1e9-3e716558fa87"
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
                    b6b0adc3-3fc9-4a88-928e-7586112181b5   = {
                        id              = "b6b0adc3-3fc9-4a88-928e-7586112181b5"
                        order           = 2
                        parentId        = "9de2c9d8-a443-4cf8-a250-b03a250b5237"
                        props           = {
                            content    = {
                                name  = "vertragsdetails"
                                title = {
                                    de = "Vertragsdetails"
                                    en = "Contract Details"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section         = "main"
                        top_level_block = true
                        type            = "title"
                    }
                    b80e23b8-39b3-4807-b0be-10bfbf4325eb   = {
                        id        = "b80e23b8-39b3-4807-b0be-10bfbf4325eb"
                        isSystem  = false
                        is_system = false
                        order     = 1
                        parentId  = "9de2c9d8-a443-4cf8-a250-b03a250b5237"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    b81c8824-257b-4032-81ab-0ecbaa7f51c4   = {
                        id       = "b81c8824-257b-4032-81ab-0ecbaa7f51c4"
                        order    = 8
                        parentId = "9c00cb99-0056-46a0-831a-df05cd24d966"
                        props    = {
                            content    = {
                                label = {
                                    de = "Allgemeine Informationen"
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
                    bfb2f17f-d0c7-4b11-864a-4b585f6da3fc   = {
                        id       = "bfb2f17f-d0c7-4b11-864a-4b585f6da3fc"
                        order    = 1
                        parentId = "9de2c9d8-a443-4cf8-a250-b03a250b5237"
                        props    = {
                            content    = {
                                schema = "contract"
                                title  = {
                                    de = "Ausgewählte Vertrag"
                                    en = "Selected contract"
                                }
                            }
                            design     = {
                                entity_title_template = "_title"
                            }
                            visibility = {}
                        }
                        section  = "header"
                        type     = "entity_selector"
                    }
                    e230de15-9121-4170-92ef-503c937ad145   = {
                        id       = "e230de15-9121-4170-92ef-503c937ad145"
                        order    = 5
                        parentId = "9c00cb99-0056-46a0-831a-df05cd24d966"
                        props    = {
                            content    = {
                                label = {
                                    de = "Adresse"
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
                    e925a791-01d0-4bbc-ae29-e9ff5cc193e7   = {
                        id       = "e925a791-01d0-4bbc-ae29-e9ff5cc193e7"
                        order    = 1
                        parentId = "9c00cb99-0056-46a0-831a-df05cd24d966"
                        props    = {
                            content    = {
                                name   = "tariff"
                                schema = "contract"
                                title  = {
                                    de = "Tarif"
                                    en = "Tariff"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "products"
                    }
                    f3c729eb-ecd0-4c68-b2a8-3e3e1630a996   = {
                        id       = "f3c729eb-ecd0-4c68-b2a8-3e3e1630a996"
                        order    = 1
                        parentId = "a3e40b34-0cad-4be7-a321-0caa7da8503e"
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
                    f9581def-e5ab-4071-acaf-665eb771e95f   = {
                        id        = "f9581def-e5ab-4071-acaf-665eb771e95f"
                        is_system = false
                        order     = 6
                        parentId  = "9de2c9d8-a443-4cf8-a250-b03a250b5237"
                        props     = {
                            content    = {
                                valueJson = {
                                    de = [90mnull[0m[0m
                                    en = jsonencode(
                                        {
                                            root = {
                                                children   = [
                                                    {
                                                        children   = [
                                                            {
                                                                detail  = 0
                                                                format  = 2
                                                                mode    = "normal"
                                                                style   = "font-size: 18px;"
                                                                text    = "{{contact._title}}"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 0
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = " - "
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                            {
                                                                detail  = 0
                                                                format  = 1
                                                                mode    = "normal"
                                                                style   = ""
                                                                text    = "{{contract.contract_name}}"
                                                                type    = "text"
                                                                version = 1
                                                            },
                                                        ]
                                                        direction  = "ltr"
                                                        format     = ""
                                                        indent     = 0
                                                        textFormat = 2
                                                        textStyle  = "font-size: 18px;"
                                                        type       = "paragraph"
                                                        version    = 1
                                                    },
                                                ]
                                                direction  = "ltr"
                                                format     = ""
                                                indent     = 0
                                                textFormat = 2
                                                textStyle  = "font-size: 18px;"
                                                type       = "root"
                                                version    = 1
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Vertragsdetails"
                        en = "Contracts details"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "9de2c9d8-a443-4cf8-a250-b03a250b5237"
                is_system    = true
                order        = 8
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#contracts"
                schema       = [
                    "contact",
                    "contract",
                ]
                slug         = "contracts"
                visibility   = {
                    is_hidden = false
                }
            },
            {
                blocks       = {
                    "20a1e526-84e1-428b-a79f-ccc01c545965" = {
                        id       = "20a1e526-84e1-428b-a79f-ccc01c545965"
                        order    = 1
                        parentId = "066bdc56-11fc-4825-b55b-beea0026876e"
                        props    = {
                            content    = {
                                schema = "contract"
                                title  = {
                                    de = "Ausgewählter Vertrag"
                                    en = "Selected contract"
                                }
                            }
                            design     = {
                                entity_title_template = "_title"
                            }
                            visibility = {}
                        }
                        section  = "header"
                        type     = "entity_selector"
                    }
                    "2f37efbc-98ed-4ca1-b19f-9a422794c49c" = {
                        id       = "2f37efbc-98ed-4ca1-b19f-9a422794c49c"
                        order    = 2
                        parentId = "79c674d2-eb26-4c43-9b11-d79a06a81868"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "change_installment_rate"
                    }
                    "56556099-72e2-4ea8-92d6-849e410e6126" = {
                        id        = "56556099-72e2-4ea8-92d6-849e410e6126"
                        isSystem  = false
                        is_system = false
                        order     = 1
                        parentId  = "066bdc56-11fc-4825-b55b-beea0026876e"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    "79c674d2-eb26-4c43-9b11-d79a06a81868" = {
                        id       = "79c674d2-eb26-4c43-9b11-d79a06a81868"
                        order    = 4
                        parentId = "066bdc56-11fc-4825-b55b-beea0026876e"
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
                    "99f42209-daa1-432c-a680-1352349d3a52" = {
                        id       = "99f42209-daa1-432c-a680-1352349d3a52"
                        order    = 3
                        parentId = "066bdc56-11fc-4825-b55b-beea0026876e"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "balance"
                    }
                    e50ab2f9-3c45-49ab-a505-6c26d409016c   = {
                        id       = "e50ab2f9-3c45-49ab-a505-6c26d409016c"
                        order    = 5
                        parentId = "066bdc56-11fc-4825-b55b-beea0026876e"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "payment"
                    }
                    e66a981d-42a2-4d08-8cc6-09682c3b49b4   = {
                        id       = "e66a981d-42a2-4d08-8cc6-09682c3b49b4"
                        order    = 2
                        parentId = "066bdc56-11fc-4825-b55b-beea0026876e"
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Zahlungen"
                        en = "Payments"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "066bdc56-11fc-4825-b55b-beea0026876e"
                is_system    = true
                order        = 9
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#payments"
                schema       = [
                    "contact",
                    "contract",
                ]
                slug         = "payments"
                visibility   = {}
            },
            {
                blocks       = {
                    "06b64391-738a-451a-ad64-5aebbacd402b" = {
                        id        = "06b64391-738a-451a-ad64-5aebbacd402b"
                        is_system = true
                        order     = 1
                        parentId  = "56df89ba-6d09-4571-b4d8-b76d1ebef7b5"
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
                    "17dee378-fe39-4b49-bdd0-ac5e53efb0e9" = {
                        id        = "17dee378-fe39-4b49-bdd0-ac5e53efb0e9"
                        is_system = true
                        order     = 1
                        parentId  = "56df89ba-6d09-4571-b4d8-b76d1ebef7b5"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "header"
                        type      = "logo"
                    }
                    "1b0d80c2-1fad-468f-a54d-449470eaf313" = {
                        id        = "1b0d80c2-1fad-468f-a54d-449470eaf313"
                        is_system = true
                        order     = 3
                        parentId  = "56df89ba-6d09-4571-b4d8-b76d1ebef7b5"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "system_banner"
                    }
                    "1b82f48c-f569-4710-b44b-a563199a281c" = {
                        id        = "1b82f48c-f569-4710-b44b-a563199a281c"
                        is_system = true
                        order     = 1
                        parentId  = "1b0d80c2-1fad-468f-a54d-449470eaf313"
                        props     = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "system_banner_content"
                    }
                    "7b709aa4-b134-482f-9f42-3fc99f70978a" = {
                        id        = "7b709aa4-b134-482f-9f42-3fc99f70978a"
                        is_system = true
                        order     = 2
                        parentId  = "56df89ba-6d09-4571-b4d8-b76d1ebef7b5"
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
                    "981050b5-83d7-4fe0-829c-da87e86489dc" = {
                        id        = "981050b5-83d7-4fe0-829c-da87e86489dc"
                        isSystem  = true
                        is_system = false
                        order     = 3
                        parentId  = "56df89ba-6d09-4571-b4d8-b76d1ebef7b5"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    has_end_date = false
                    label        = {
                        de = "Wartungsseite"
                        en = "Maintenance"
                    }
                    start_date   = [90mnull[0m[0m
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "56df89ba-6d09-4571-b4d8-b76d1ebef7b5"
                is_public    = true
                is_system    = true
                order        = 10
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#maintenance"
                slug         = "maintenance"
                visibility   = {}
            },
            {
                blocks       = {
                    "1eefbc02-1674-4800-a1db-866a10ced0b8" = {
                        id       = "1eefbc02-1674-4800-a1db-866a10ced0b8"
                        order    = 4
                        parentId = "1c84ff02-1e3d-4043-bcb0-c79a4373e9a6"
                        props    = {
                            content    = {
                                label = {
                                    de = "Zählerstände"
                                    en = "Meter readings"
                                }
                                name  = "meter_readings"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    "31d459cb-0d76-4ef8-9612-9e9a2a14bc86" = {
                        id        = "31d459cb-0d76-4ef8-9612-9e9a2a14bc86"
                        isSystem  = false
                        is_system = false
                        order     = 1
                        parentId  = "1c84ff02-1e3d-4043-bcb0-c79a4373e9a6"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    "5bce14b9-948e-4993-888e-08f905c4a1ce" = {
                        id       = "5bce14b9-948e-4993-888e-08f905c4a1ce"
                        order    = 1
                        parentId = "97ef0182-6512-4d72-98dc-49ff8d3a3ced"
                        props    = {
                            content    = {
                                title = {
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
                    "95e0906b-0978-4b43-9985-a811b9cc0a4f" = {
                        id       = "95e0906b-0978-4b43-9985-a811b9cc0a4f"
                        order    = 2
                        parentId = "97ef0182-6512-4d72-98dc-49ff8d3a3ced"
                        props    = {
                            content    = {
                                button_label = {
                                    de = "Zählerstand hinzufügen"
                                    en = "Add meter reading"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "add_meter_reading"
                    }
                    "97ef0182-6512-4d72-98dc-49ff8d3a3ced" = {
                        id       = "97ef0182-6512-4d72-98dc-49ff8d3a3ced"
                        order    = 3
                        parentId = "1c84ff02-1e3d-4043-bcb0-c79a4373e9a6"
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
                    bf5f85d0-d81b-491e-b15a-4cc7404c988d   = {
                        id       = "bf5f85d0-d81b-491e-b15a-4cc7404c988d"
                        order    = 2
                        parentId = "1c84ff02-1e3d-4043-bcb0-c79a4373e9a6"
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
                    d9269c3d-c723-4aef-9a62-cdd666412d4b   = {
                        id       = "d9269c3d-c723-4aef-9a62-cdd666412d4b"
                        order    = 1
                        parentId = "1eefbc02-1674-4800-a1db-866a10ced0b8"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "meter_readings"
                    }
                    eeac391d-4502-4da9-8214-de1d494294fb   = {
                        id       = "eeac391d-4502-4da9-8214-de1d494294fb"
                        order    = 1
                        parentId = "1c84ff02-1e3d-4043-bcb0-c79a4373e9a6"
                        props    = {
                            content    = {
                                schema = "contract"
                                title  = {
                                    de = "Ausgewählter Vertrag"
                                    en = "Selected contract"
                                }
                            }
                            design     = {
                                entity_title_template = "_title"
                            }
                            visibility = {}
                        }
                        section  = "header"
                        type     = "entity_selector"
                    }
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Verbräuche"
                        en = "Consumption"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "1c84ff02-1e3d-4043-bcb0-c79a4373e9a6"
                is_system    = true
                order        = 11
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#meters"
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
                    "8e01eabb-82a6-4dc6-89e5-6747d73506b4" = {
                        id        = "8e01eabb-82a6-4dc6-89e5-6747d73506b4"
                        isSystem  = false
                        is_system = false
                        order     = 1
                        parentId  = "c0b45894-a9fb-43a2-bfaf-b50d9f7f8eec"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Mein Konto"
                        en = "My Account"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "c0b45894-a9fb-43a2-bfaf-b50d9f7f8eec"
                is_system    = true
                order        = 12
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#my-account"
                schema       = [
                    "contact",
                ]
                slug         = "my-account"
                visibility   = {}
            },
            {
                blocks       = {
                    "28ea5336-4e64-47d8-a768-8612bff869f2" = {
                        id        = "28ea5336-4e64-47d8-a768-8612bff869f2"
                        isSystem  = false
                        is_system = false
                        order     = 1
                        parentId  = "85a1da14-9520-4777-ba18-db6434d708f8"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    "66640552-901f-442c-a49f-f3daf4d4e64d" = {
                        id       = "66640552-901f-442c-a49f-f3daf4d4e64d"
                        order    = 2
                        parentId = "85a1da14-9520-4777-ba18-db6434d708f8"
                        props    = {
                            content    = {
                                enable_search = true
                                name          = [90mnull[0m[0m
                                page_size     = "10"
                                schema        = "all"
                                title         = {
                                    de = [90mnull[0m[0m
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "documents"
                    }
                    "9acca5fb-3f6b-4a70-90b2-810c93bf83f6" = {
                        id       = "9acca5fb-3f6b-4a70-90b2-810c93bf83f6"
                        order    = 1
                        parentId = "85a1da14-9520-4777-ba18-db6434d708f8"
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Dokumente"
                        en = "Documents"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "85a1da14-9520-4777-ba18-db6434d708f8"
                is_public    = false
                is_system    = true
                order        = 13
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#documents"
                slug         = "documents"
            },
            {
                blocks       = {
                    "15b88c14-fbbe-4d90-ab5f-51ae7d5416f1" = {
                        id       = "15b88c14-fbbe-4d90-ab5f-51ae7d5416f1"
                        order    = 1
                        parentId = "3e259cc1-05ce-4cd7-8fdb-885be1d76e8f"
                        props    = {
                            content    = {
                                name  = "requests"
                                title = {
                                    de = "Anfragen"
                                    en = "Requests"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                    "1d1ee92f-bf9f-4dae-b1b0-9ab07873738a" = {
                        id        = "1d1ee92f-bf9f-4dae-b1b0-9ab07873738a"
                        isSystem  = false
                        is_system = false
                        order     = 1
                        parentId  = "3e259cc1-05ce-4cd7-8fdb-885be1d76e8f"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    "344ecbe4-364c-4f68-b15e-be59722cf724" = {
                        id       = "344ecbe4-364c-4f68-b15e-be59722cf724"
                        order    = 2
                        parentId = "3e259cc1-05ce-4cd7-8fdb-885be1d76e8f"
                        props    = {
                            content    = {
                                enable_search           = true
                                group_by                = "items.order_number"
                                group_by_order_by       = "asc"
                                opportunity_bottom_name = "betreiber_wp_mail"
                                order_top_name          = "order_number"
                                schema                  = "contact"
                                search_fields           = [
                                    "durchschnittlicher_jaehrlicher_stromverbrauch_in_kwh",
                                    "1_dachflaeche_breite_in_meter",
                                ]
                                search_fields_keys      = [
                                    "opportunity::durchschnittlicher_jaehrlicher_stromverbrauch_in_kwh",
                                    "opportunity::1_dachflaeche_breite_in_meter",
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Anfragen"
                        en = "Requests"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "3e259cc1-05ce-4cd7-8fdb-885be1d76e8f"
                is_system    = true
                order        = 14
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#requests"
                schema       = [
                    "contact",
                ]
                slug         = "requests"
                visibility   = {}
            },
            {
                blocks       = {
                    "1ddf1660-62b9-450a-b4da-c96f5a7aa7db" = {
                        id       = "1ddf1660-62b9-450a-b4da-c96f5a7aa7db"
                        order    = 2
                        parentId = "3ec0fead-a86e-4f26-a8eb-aa13512e7bfc"
                        props    = {
                            content    = {
                                label = {
                                    de = "Support-Hotline"
                                    en = "Support Hotline"
                                }
                                name  = "support_hotline"
                                value = "+4922112345678"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "display_field"
                    }
                    "39bfa1a5-7acd-44ac-8d46-61fefeec23b1" = {
                        id       = "39bfa1a5-7acd-44ac-8d46-61fefeec23b1"
                        order    = 1
                        parentId = "436d88df-673b-4447-87d5-6574f31b8447"
                        props    = {
                            content    = {
                                name  = "support"
                                title = {
                                    de = "Support"
                                    en = "Support"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                    "3ec0fead-a86e-4f26-a8eb-aa13512e7bfc" = {
                        id       = "3ec0fead-a86e-4f26-a8eb-aa13512e7bfc"
                        order    = 2
                        parentId = "436d88df-673b-4447-87d5-6574f31b8447"
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
                    "513f5a69-0483-4835-96a3-4f69a9f6d789" = {
                        id       = "513f5a69-0483-4835-96a3-4f69a9f6d789"
                        order    = 1
                        parentId = "3ec0fead-a86e-4f26-a8eb-aa13512e7bfc"
                        props    = {
                            content    = {
                                label = {
                                    de = "Support-E-Mail"
                                    en = "Support E-Mail"
                                }
                                name  = "support_e_mail"
                                value = "support@company.com"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "display_field"
                    }
                    "72dcf8ce-a2ca-41e7-8e9b-9fe22deedb44" = {
                        id       = "72dcf8ce-a2ca-41e7-8e9b-9fe22deedb44"
                        order    = 5
                        parentId = "436d88df-673b-4447-87d5-6574f31b8447"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "external_links"
                    }
                    a3f569c7-a899-401c-81e6-a8b014f83b78   = {
                        id        = "a3f569c7-a899-401c-81e6-a8b014f83b78"
                        isSystem  = false
                        is_system = false
                        order     = 1
                        parentId  = "436d88df-673b-4447-87d5-6574f31b8447"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Support"
                        en = "Support"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                design       = {}
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "436d88df-673b-4447-87d5-6574f31b8447"
                is_system    = true
                order        = 15
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#support"
                schema       = []
                slug         = "support"
                visibility   = {}
            },
            {
                blocks       = {
                    "0162e432-ed27-4268-b9ba-98d7eec12383" = {
                        id       = "0162e432-ed27-4268-b9ba-98d7eec12383"
                        order    = 5
                        parentId = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                        props    = {
                            content    = {
                                name  = "opportunity_details"
                                title = {
                                    de = "Anfragen Details"
                                    en = "Opportunity details"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                    "1516e850-d7f8-4b0c-a662-6f4756861e2b" = {
                        id       = "1516e850-d7f8-4b0c-a662-6f4756861e2b"
                        order    = 1
                        parentId = "29c9afe7-c218-4d6d-b39e-a72c3211ea45"
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
                    "1a5a5bc6-d1c8-4ee4-ad81-059cc9ccc500" = {
                        id        = "1a5a5bc6-d1c8-4ee4-ad81-059cc9ccc500"
                        is_system = false
                        order     = 1
                        parentId  = "e096e333-768f-45f4-968e-704a2b784191"
                        props     = {
                            content    = {
                                label                   = "Order Number"
                                name                    = "order_number"
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
                    "1d644196-038b-458d-ac6b-b88bdaa8bb3d" = {
                        id        = "1d644196-038b-458d-ac6b-b88bdaa8bb3d"
                        is_system = false
                        order     = 8
                        parentId  = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                        props     = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "billing_first_name"
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
                    "1df4a625-87b4-4611-9b5c-0c1b4384f2a2" = {
                        id       = "1df4a625-87b4-4611-9b5c-0c1b4384f2a2"
                        order    = 1
                        parentId = "cc4ad9b9-885f-4d4a-a55c-e980a7f8bce7"
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
                    "212f97f8-cfdb-4f48-8918-cb5c88493112" = {
                        id       = "212f97f8-cfdb-4f48-8918-cb5c88493112"
                        order    = 2
                        parentId = "cc4ad9b9-885f-4d4a-a55c-e980a7f8bce7"
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
                    "22137d79-bf6f-41ec-9a67-39c8c19dc2e2" = {
                        id       = "22137d79-bf6f-41ec-9a67-39c8c19dc2e2"
                        order    = 1
                        parentId = "9a493a13-fe71-4700-8f28-c50bcbfade61"
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
                    "22d666e8-61e9-4194-b0fb-7c9e3fd0451d" = {
                        id       = "22d666e8-61e9-4194-b0fb-7c9e3fd0451d"
                        order    = 3
                        parentId = "9a493a13-fe71-4700-8f28-c50bcbfade61"
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
                    "29c9afe7-c218-4d6d-b39e-a72c3211ea45" = {
                        id       = "29c9afe7-c218-4d6d-b39e-a72c3211ea45"
                        order    = 3
                        parentId = "7301805a-2e3f-4470-8168-6de969169639"
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
                    "2a47f20c-029f-4c03-b11a-35aba2f6b5ec" = {
                        id        = "2a47f20c-029f-4c03-b11a-35aba2f6b5ec"
                        is_system = false
                        order     = 2
                        parentId  = "9a493a13-fe71-4700-8f28-c50bcbfade61"
                        props     = {
                            content    = {
                                title = {
                                    de = [90mnull[0m[0m
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "order_summary"
                    }
                    "3615cf6a-a323-406f-8f86-e39ad2ef472b" = {
                        id        = "3615cf6a-a323-406f-8f86-e39ad2ef472b"
                        is_system = false
                        order     = 9
                        parentId  = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                        props     = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "address"
                                relation_attribute_name = [90mnull[0m[0m
                                relation_schema         = [90mnull[0m[0m
                                schema                  = "contact"
                                type                    = "attribute"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute"
                    }
                    "49c9ba8d-954a-4d9c-a713-760a99295019" = {
                        id        = "49c9ba8d-954a-4d9c-a713-760a99295019"
                        is_system = false
                        order     = 3
                        parentId  = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                        props     = {
                            content    = {
                                action               = "link"
                                button_label         = {
                                    de = "Button"
                                    en = "Button"
                                }
                                button_link          = "https://google.com"
                                link                 = "https://google.com"
                                portal_functionality = [90mnull[0m[0m
                                subtitle             = {
                                    de = "Untertitel"
                                    en = "subtitle"
                                }
                                target_path          = [90mnull[0m[0m
                                title                = {
                                    de = "Titel"
                                    en = "Title"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "teaser"
                    }
                    "5ac2bd63-710c-4af6-8d3a-da78fe503a8d" = {
                        id       = "5ac2bd63-710c-4af6-8d3a-da78fe503a8d"
                        order    = 2
                        parentId = "7301805a-2e3f-4470-8168-6de969169639"
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
                    "7301805a-2e3f-4470-8168-6de969169639" = {
                        id       = "7301805a-2e3f-4470-8168-6de969169639"
                        order    = 6
                        parentId = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tabs"
                    }
                    "98e44249-c6b3-455d-8cd3-cf126d90936f" = {
                        id        = "98e44249-c6b3-455d-8cd3-cf126d90936f"
                        is_system = false
                        order     = 4
                        parentId  = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                        props     = {
                            content    = {
                                button_label           = {
                                    de = "Button"
                                    en = "Button"
                                }
                                campaign_id            = "c0f855f9-6d9e-4c97-918f-61140bae21b8"
                                dismissal_button_label = {
                                    de = "Schließen"
                                    en = "Dismiss"
                                }
                                is_dismissable         = true
                                subtitle               = {
                                    de = "Untertitel"
                                    en = [90mnull[0m[0m
                                }
                                title                  = {
                                    de = "Titel"
                                    en = "Title"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "campaign"
                    }
                    "9958ccb9-710b-4e70-8f0e-3f08cdb62e9e" = {
                        id        = "9958ccb9-710b-4e70-8f0e-3f08cdb62e9e"
                        is_system = false
                        order     = 3
                        parentId  = "e096e333-768f-45f4-968e-704a2b784191"
                        props     = {
                            content    = {
                                label                   = "Expiration Date"
                                name                    = "expires_at"
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
                    "9a493a13-fe71-4700-8f28-c50bcbfade61" = {
                        id       = "9a493a13-fe71-4700-8f28-c50bcbfade61"
                        order    = 1
                        parentId = "7301805a-2e3f-4470-8168-6de969169639"
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
                    a6685cb9-12ed-4b59-bdfd-4792142f6b06   = {
                        id        = "a6685cb9-12ed-4b59-bdfd-4792142f6b06"
                        is_system = false
                        order     = 2
                        parentId  = "e096e333-768f-45f4-968e-704a2b784191"
                        props     = {
                            content    = {
                                label                   = "Status"
                                name                    = "status"
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
                    af8e0c19-1b3d-4f47-a7a5-e118859dccbb   = {
                        id        = "af8e0c19-1b3d-4f47-a7a5-e118859dccbb"
                        is_system = false
                        order     = 2
                        parentId  = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                        props     = {
                            content    = {
                                name   = "customer"
                                schema = "opportunity"
                                title  = {
                                    de = "Your installer"
                                    en = "Your installer"
                                }
                                type   = "relation"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "contact_card"
                    }
                    b1750981-6be0-4a9e-9b63-487d7ccab858   = {
                        id       = "b1750981-6be0-4a9e-9b63-487d7ccab858"
                        order    = 5
                        parentId = "9a493a13-fe71-4700-8f28-c50bcbfade61"
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
                    b1fa9d3b-ed99-42c6-8859-bb9fc610141d   = {
                        id        = "b1fa9d3b-ed99-42c6-8859-bb9fc610141d"
                        is_system = false
                        order     = 7
                        parentId  = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                        props     = {
                            content    = {
                                button_label           = {
                                    de = "Button"
                                    en = "Button"
                                }
                                dismissal_button_label = {
                                    de = "Schließen"
                                    en = "Dismiss"
                                }
                                is_dismissable         = true
                                subtitle               = {
                                    de = "Untertitel"
                                    en = [90mnull[0m[0m
                                }
                                title                  = {
                                    de = "Titel"
                                    en = "Title"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "campaign"
                    }
                    cc4ad9b9-885f-4d4a-a55c-e980a7f8bce7   = {
                        id       = "cc4ad9b9-885f-4d4a-a55c-e980a7f8bce7"
                        order    = 1
                        parentId = "5ac2bd63-710c-4af6-8d3a-da78fe503a8d"
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
                    cdb17656-a75b-4b93-917b-354e2cbccea0   = {
                        id        = "cdb17656-a75b-4b93-917b-354e2cbccea0"
                        is_system = false
                        order     = 1
                        parentId  = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                        props     = {
                            content    = {
                                title = {
                                    de = [90mnull[0m[0m
                                    en = [90mnull[0m[0m
                                }
                            }
                            design     = {}
                            visibility = {
                                visible_for_targets = [
                                    "f1e1cf8b-a0f6-4da1-a423-f60f5091412d",
                                ]
                            }
                        }
                        section   = "main"
                        type      = "order_summary"
                    }
                    d11b9ce0-8ef9-451b-83ec-ba4de75c5154   = {
                        id       = "d11b9ce0-8ef9-451b-83ec-ba4de75c5154"
                        order    = 4
                        parentId = "9a493a13-fe71-4700-8f28-c50bcbfade61"
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
                    e096e333-768f-45f4-968e-704a2b784191   = {
                        id        = "e096e333-768f-45f4-968e-704a2b784191"
                        is_system = false
                        order     = 10
                        parentId  = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                        props     = {
                            content    = {
                                value = "order::Order Details"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "attribute_group"
                    }
                    f49ec907-0c71-4480-8e3c-4d527bd58724   = {
                        id        = "f49ec907-0c71-4480-8e3c-4d527bd58724"
                        isSystem  = false
                        is_system = false
                        order     = 1
                        parentId  = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Anfragen"
                        en = "Opportunity"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "b99a8aa7-b0af-4944-8e61-f5b1b5122999"
                is_public    = false
                is_system    = true
                order        = 17
                org_id       = "739224"
                parentId     = "3e259cc1-05ce-4cd7-8fdb-885be1d76e8f"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#opportunities"
                schema       = [
                    "contact",
                    "opportunity",
                    "order",
                ]
                slug         = "opportunities"
            },
            {
                blocks       = {
                    "0df9dcb1-bdb1-4690-b238-6161856f29a5" = {
                        id       = "0df9dcb1-bdb1-4690-b238-6161856f29a5"
                        order    = 1
                        parentId = "c852c3a6-b721-4294-87e9-db05ec4f9d06"
                        props    = {
                            content    = {
                                page_size = 5
                                schema    = "order"
                                title     = {}
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "documents"
                    }
                    "1247ab64-549d-4d71-916e-669b92e0675c" = {
                        id       = "1247ab64-549d-4d71-916e-669b92e0675c"
                        order    = 1
                        parentId = "9f3381a9-7e09-4326-b0f7-b29c02a604fe"
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
                    "3f81f79e-e306-4910-a078-7107786ffd7f" = {
                        id       = "3f81f79e-e306-4910-a078-7107786ffd7f"
                        order    = 2
                        parentId = "fac1b766-309c-4c55-9a54-ecb46862bed6"
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
                    "6baed9a0-3e75-4141-8a42-678580a779fe" = {
                        id       = "6baed9a0-3e75-4141-8a42-678580a779fe"
                        order    = 1
                        parentId = "1f12a2b4-5485-4eeb-8b8f-2aa0423dbe5b"
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
                    "9a0693a0-ef1b-414d-88d0-6ecea259602f" = {
                        id       = "9a0693a0-ef1b-414d-88d0-6ecea259602f"
                        order    = 1
                        parentId = "c45c4d36-b72c-46c2-ac28-6fe502c910db"
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
                    "9f3381a9-7e09-4326-b0f7-b29c02a604fe" = {
                        id       = "9f3381a9-7e09-4326-b0f7-b29c02a604fe"
                        order    = 1
                        parentId = "fac1b766-309c-4c55-9a54-ecb46862bed6"
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
                    b7295fdc-d1a6-41b7-a4a7-e21f44227d56   = {
                        id       = "b7295fdc-d1a6-41b7-a4a7-e21f44227d56"
                        order    = 3
                        parentId = "9a0693a0-ef1b-414d-88d0-6ecea259602f"
                        props    = {
                            content    = {
                                name   = "progress"
                                schema = "order"
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
                    c45c4d36-b72c-46c2-ac28-6fe502c910db   = {
                        id       = "c45c4d36-b72c-46c2-ac28-6fe502c910db"
                        order    = 2
                        parentId = "1f12a2b4-5485-4eeb-8b8f-2aa0423dbe5b"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tabs"
                    }
                    c852c3a6-b721-4294-87e9-db05ec4f9d06   = {
                        id       = "c852c3a6-b721-4294-87e9-db05ec4f9d06"
                        order    = 3
                        parentId = "c45c4d36-b72c-46c2-ac28-6fe502c910db"
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
                    cef52aab-be4e-44b0-9cd3-33632ad9d992   = {
                        id       = "cef52aab-be4e-44b0-9cd3-33632ad9d992"
                        order    = 1
                        parentId = "9a0693a0-ef1b-414d-88d0-6ecea259602f"
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
                    d6fe9ac2-092b-4296-bf42-c903c24f92c1   = {
                        id       = "d6fe9ac2-092b-4296-bf42-c903c24f92c1"
                        order    = 2
                        parentId = "9f3381a9-7e09-4326-b0f7-b29c02a604fe"
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
                    e1de79d5-6e0b-485f-a3c8-6c8324fc05b8   = {
                        id       = "e1de79d5-6e0b-485f-a3c8-6c8324fc05b8"
                        order    = 2
                        parentId = "9a0693a0-ef1b-414d-88d0-6ecea259602f"
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
                    e5eb1b8d-3cb4-4ecc-af81-1ad668612e83   = {
                        id       = "e5eb1b8d-3cb4-4ecc-af81-1ad668612e83"
                        order    = 1
                        parentId = "3f81f79e-e306-4910-a078-7107786ffd7f"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
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
                    e75b28ed-80ee-4cb2-870d-577f55ba04ab   = {
                        id        = "e75b28ed-80ee-4cb2-870d-577f55ba04ab"
                        isSystem  = false
                        is_system = false
                        order     = 1
                        parentId  = "1f12a2b4-5485-4eeb-8b8f-2aa0423dbe5b"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                    fac1b766-309c-4c55-9a54-ecb46862bed6   = {
                        id       = "fac1b766-309c-4c55-9a54-ecb46862bed6"
                        order    = 2
                        parentId = "c45c4d36-b72c-46c2-ac28-6fe502c910db"
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
                }
                content      = {
                    favicon   = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Bestellung"
                        en = "Order"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "1f12a2b4-5485-4eeb-8b8f-2aa0423dbe5b"
                is_public    = false
                is_system    = true
                order        = 18
                org_id       = "739224"
                parentId     = "3e259cc1-05ce-4cd7-8fdb-885be1d76e8f"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#orders"
                schema       = [
                    "contact",
                    "order",
                ]
                slug         = "orders"
            },
            {
                blocks       = {
                    "0fe48ce5-a7ca-4ba6-a376-98349837484c" = {
                        id       = "0fe48ce5-a7ca-4ba6-a376-98349837484c"
                        order    = 1
                        parentId = "18a1cf8d-6caa-4e92-9d9e-da180eaffb09"
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
                    "13e7c3d6-89e4-4437-b6ff-21c0459b7203" = {
                        id       = "13e7c3d6-89e4-4437-b6ff-21c0459b7203"
                        order    = 2
                        parentId = "3092e356-1aa1-4336-b5e6-8164787872c1"
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
                    "18a1cf8d-6caa-4e92-9d9e-da180eaffb09" = {
                        id       = "18a1cf8d-6caa-4e92-9d9e-da180eaffb09"
                        order    = 1
                        parentId = "4eb236b2-2a9c-4d70-8a6f-808ea4300813"
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
                    "3092e356-1aa1-4336-b5e6-8164787872c1" = {
                        id       = "3092e356-1aa1-4336-b5e6-8164787872c1"
                        order    = 4
                        parentId = "18a1cf8d-6caa-4e92-9d9e-da180eaffb09"
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
                    "4eb236b2-2a9c-4d70-8a6f-808ea4300813" = {
                        id       = "4eb236b2-2a9c-4d70-8a6f-808ea4300813"
                        order    = 2
                        parentId = "6cdb4af3-5754-43bf-a746-dee56023e729"
                        props    = {
                            content    = {}
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "tabs"
                    }
                    "57d67093-f16d-4981-a199-3a31861ecc1a" = {
                        id       = "57d67093-f16d-4981-a199-3a31861ecc1a"
                        order    = 2
                        parentId = "18a1cf8d-6caa-4e92-9d9e-da180eaffb09"
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
                    "75360807-6f89-4989-b2b0-0573e1d8b606" = {
                        id       = "75360807-6f89-4989-b2b0-0573e1d8b606"
                        order    = 1
                        parentId = "6cdb4af3-5754-43bf-a746-dee56023e729"
                        props    = {
                            content    = {
                                name  = "contact"
                                title = {
                                    de = "Kontakt"
                                    en = "Contact"
                                }
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "title"
                    }
                    "84651dae-2420-4237-95a4-19fc26557211" = {
                        id       = "84651dae-2420-4237-95a4-19fc26557211"
                        order    = 5
                        parentId = "18a1cf8d-6caa-4e92-9d9e-da180eaffb09"
                        props    = {
                            content    = {
                                label = {
                                    de = "Adressdetails"
                                    en = "Address details"
                                }
                                name  = "address_details"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    "91f3e8fb-d5f2-4091-853d-d340702896b5" = {
                        id       = "91f3e8fb-d5f2-4091-853d-d340702896b5"
                        order    = 1
                        parentId = "96f8f396-87ec-4f15-b582-a247a005c674"
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
                    "96f8f396-87ec-4f15-b582-a247a005c674" = {
                        id       = "96f8f396-87ec-4f15-b582-a247a005c674"
                        order    = 2
                        parentId = "4eb236b2-2a9c-4d70-8a6f-808ea4300813"
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
                    a2f70213-4a08-4860-8c00-72f72147e5dc   = {
                        id       = "a2f70213-4a08-4860-8c00-72f72147e5dc"
                        order    = 1
                        parentId = "3092e356-1aa1-4336-b5e6-8164787872c1"
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
                    a39258ba-4099-4623-976d-8d0dcef50289   = {
                        id       = "a39258ba-4099-4623-976d-8d0dcef50289"
                        order    = 1
                        parentId = "84651dae-2420-4237-95a4-19fc26557211"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "address"
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
                    a892f57a-9298-4590-899a-dc8f27ca23f3   = {
                        id       = "a892f57a-9298-4590-899a-dc8f27ca23f3"
                        order    = 3
                        parentId = "18a1cf8d-6caa-4e92-9d9e-da180eaffb09"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "birthdate"
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
                    d9407a94-9939-4294-9fa9-7aac8e57103d   = {
                        id       = "d9407a94-9939-4294-9fa9-7aac8e57103d"
                        order    = 1
                        parentId = "ddc2789e-38d0-4f07-886e-9ceb4aa04941"
                        props    = {
                            content    = {
                                label                   = [90mnull[0m[0m
                                name                    = "payment"
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
                    ddc2789e-38d0-4f07-886e-9ceb4aa04941   = {
                        id       = "ddc2789e-38d0-4f07-886e-9ceb4aa04941"
                        order    = 6
                        parentId = "18a1cf8d-6caa-4e92-9d9e-da180eaffb09"
                        props    = {
                            content    = {
                                label = {
                                    de = "Zahlungsmethoden"
                                    en = "Payment methods"
                                }
                                name  = "payment_methods"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section  = "main"
                        type     = "group"
                    }
                    f404d61c-9d1d-49bc-9286-6087a7f3f3cb   = {
                        id        = "f404d61c-9d1d-49bc-9286-6087a7f3f3cb"
                        isSystem  = false
                        is_system = false
                        order     = 1
                        parentId  = "6cdb4af3-5754-43bf-a746-dee56023e729"
                        props     = {
                            content    = {
                                links = [
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
                                        }
                                    },
                                    {
                                        label = {
                                            en = [90mnull[0m[0m
                                        }
                                        url   = {
                                            en = [90mnull[0m[0m
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
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/d715f6ba-11c5-4ce3-80ff-cf5dc4bfbb9f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/630d71fa-61b0-480f-8905-c0d46c3d8924/mosaic-energy-green.png"
                    }
                    label     = {
                        de = "Kontakt"
                        en = "Contact"
                    }
                    logoImage = {
                        darkUrl = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/f01701db-2615-48ea-995f-af970e7cb11f/mosaic-energy-green.png"
                        url     = "https://epilot-dev-user-content.s3.eu-central-1.amazonaws.com/739224/2eef2722-ac86-4588-8cce-449ddfafe3c3/mosaic-energy-green.png"
                    }
                }
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "6cdb4af3-5754-43bf-a746-dee56023e729"
                is_public    = false
                is_system    = true
                order        = 19
                org_id       = "739224"
                parentId     = "c0b45894-a9fb-43a2-bfaf-b50d9f7f8eec"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#contact"
                schema       = [
                    "contact",
                ]
                slug         = "contact"
            },
            {
                blocks       = {
                    "61dace70-719e-4dbc-a49e-9f3927608d66" = {
                        id        = "61dace70-719e-4dbc-a49e-9f3927608d66"
                        is_system = false
                        order     = 2
                        parentId  = "759416be-230e-43a4-bf55-83843ffea9de"
                        props     = {
                            content    = {
                                schema = "billing_account"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "entity_list"
                    }
                    "88af4bf1-28bf-41b8-98ff-83fed56ee7e2" = {
                        id        = "88af4bf1-28bf-41b8-98ff-83fed56ee7e2"
                        is_system = false
                        order     = 1
                        parentId  = "759416be-230e-43a4-bf55-83843ffea9de"
                        props     = {
                            content    = {
                                name  = "billing_accounts_for_sbp_electricity"
                                title = {
                                    de = "Titel"
                                    en = "Billing Accounts for SBP Electricity"
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
                    label = {
                        de = "Neue Seite"
                        en = "Parent"
                    }
                }
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "759416be-230e-43a4-bf55-83843ffea9de"
                is_public    = false
                is_system    = false
                order        = 20
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#parent"
                schema       = [
                    "contact",
                ]
                slug         = "parent"
            },
            {
                blocks       = {
                    "30c49ea2-66ec-4d48-b4c9-ecd38a862f9e" = {
                        id        = "30c49ea2-66ec-4d48-b4c9-ecd38a862f9e"
                        is_system = false
                        order     = 2
                        parentId  = "ea6396b7-13b4-45be-9d21-ed04f2618852"
                        props     = {
                            content    = {
                                schema = "contract"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "entity_list"
                    }
                    b256949d-fc99-4c07-8f6d-7d0f2d8a3685   = {
                        id        = "b256949d-fc99-4c07-8f6d-7d0f2d8a3685"
                        is_system = false
                        order     = 1
                        parentId  = "ea6396b7-13b4-45be-9d21-ed04f2618852"
                        props     = {
                            content    = {
                                name  = "contracts_for_billing_account_12345"
                                title = {
                                    de = "Titel"
                                    en = "Contracts for Billing Account #12345"
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
                    label = {
                        de = "Neue Seite"
                        en = "Child"
                    }
                }
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "ea6396b7-13b4-45be-9d21-ed04f2618852"
                is_public    = false
                is_system    = false
                order        = 21
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#child"
                schema       = [
                    "contact",
                ]
                slug         = "child"
            },
            {
                blocks       = {
                    "2ff819d7-9b87-47d3-b3d3-8609c3c2f936" = {
                        id        = "2ff819d7-9b87-47d3-b3d3-8609c3c2f936"
                        is_system = false
                        order     = 2
                        parentId  = "c4805deb-2eb0-4248-a15a-1979864ff952"
                        props     = {
                            content    = {
                                schema = "meter"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "entity_list"
                    }
                    "5f0f6834-13f6-4fad-a407-b5c29b01611b" = {
                        id        = "5f0f6834-13f6-4fad-a407-b5c29b01611b"
                        is_system = false
                        order     = 1
                        parentId  = "c4805deb-2eb0-4248-a15a-1979864ff952"
                        props     = {
                            content    = {
                                name  = "meters_for_contract_987654321"
                                title = {
                                    de = "Titel"
                                    en = "Meters for Contract #987654321"
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
                    label = {
                        de = "Neue Seite"
                        en = "Grandchild"
                    }
                }
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "c4805deb-2eb0-4248-a15a-1979864ff952"
                is_public    = false
                is_system    = false
                order        = 22
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#grandchild"
                schema       = [
                    "contact",
                ]
                slug         = "grandchild"
            },
            {
                blocks       = {
                    "06d01226-5a71-47c8-a32e-6146b27323c1" = {
                        id        = "06d01226-5a71-47c8-a32e-6146b27323c1"
                        is_system = false
                        order     = 2
                        parentId  = "b06249d1-747b-4d5c-b214-9c52ad1619f0"
                        props     = {
                            content    = {
                                label = {
                                    de = "Beschriftung"
                                    en = "Selected Meter ID"
                                }
                                name  = "selected_meter_id"
                                value = "123"
                            }
                            design     = {}
                            visibility = {}
                        }
                        section   = "main"
                        type      = "display_field"
                    }
                    "170d96f6-9c7a-494f-a55c-7b975558be15" = {
                        id        = "170d96f6-9c7a-494f-a55c-7b975558be15"
                        is_system = false
                        order     = 1
                        parentId  = "b06249d1-747b-4d5c-b214-9c52ad1619f0"
                        props     = {
                            content    = {
                                name  = "meter_123"
                                title = {
                                    de = "Titel"
                                    en = "Meter #123"
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
                    label = {
                        de = "Neue Seite"
                        en = "Great-grandchild"
                    }
                }
                domain       = "end-customer-portal.ecp.dev.epilot.io"
                id           = "b06249d1-747b-4d5c-b214-9c52ad1619f0"
                is_public    = false
                is_system    = false
                order        = 23
                org_id       = "739224"
                portal_id    = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
                portal_sk_v3 = "PORTAL_PAGE#9e4628c7-7b9a-47ac-968c-4930c3001dbd#great-grandchild"
                schema       = [
                    "contact",
                ]
                slug         = "great-grandchild"
            },
        ]
    )
    portal_id                  = "9e4628c7-7b9a-47ac-968c-4930c3001dbd"
    portal_sk_v3               = "PORTAL_CONFIG#9e4628c7-7b9a-47ac-968c-4930c3001dbd"
    registration_identifiers   = jsonencode(
        [
            {
                name   = "email"
                schema = "contact"
            },
        ]
    )
    self_registration_setting  = "ALLOW_WITH_CONTACT_CREATION"
    triggered_journeys         = [
        {
            journey_id   = "39a318d0-4b58-11ef-98a1-47cc585da039"
            trigger_name = "FIRST_LOGIN"
        },
        {
            journey_id   = "9ed5c5c0-113a-11ef-91d4-c5480aec4a93"
            trigger_name = "DECLINE_ORDER"
        },
        {
            journey_id   = "8793db90-5a37-11ef-ae36-2b2e64b415c7"
            trigger_name = "ACCEPT_ORDER"
        },
    ]
}
