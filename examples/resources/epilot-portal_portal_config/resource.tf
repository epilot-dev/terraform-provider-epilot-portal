resource "epilot-portal_portal_config" "my_portalconfig" {
  access_token = "...my_access_token..."
  advanced_mfa = {
    enabled = true
  }
  allowed_file_extensions = {
    archive = [
      "zip"
    ]
    audio_video = [
      "mp4"
    ]
    cad = [
      "cad"
    ]
    calendar = [
      "ics"
    ]
    document = [
      "pdf"
    ]
    email = [
      "eml"
    ]
    image = [
      "jpg"
    ]
    other = [
      "txt"
    ]
    presentation = [
      "ppt"
    ]
    spreadsheet = [
      "xls"
    ]
  }
  approval_state_attributes = "{ \"see\": \"documentation\" }"
  auth_settings = {
    entry_point = "SSO"
    passwordless_login = {
      enabled = true
    }
    preferred_sso_providers = [
      "office-365-login"
    ]
  }
  cognito_details = {
    cognito_user_pool_arn       = "arn:aws:cognito-idp:us-east-1:123412341234:userpool/us-east-1_123412341"
    cognito_user_pool_client_id = "6bsd0jkgoie74k2i8mrhc1vest"
    cognito_user_pool_id        = "eu-central-1_CUEQRNbUb"
    password_policy = {
      minimum_length    = 8
      require_lowercase = true
      require_numbers   = true
      require_symbols   = true
      require_uppercase = true
    }
  }
  config = "...my_config..."
  contact_identifiers = [
    "..."
  ]
  contract_identifiers = [
    {
      name   = "...my_name..."
      schema = "contact"
    }
  ]
  contract_selector_config = {
    show_inactive = false
    title_path    = "...my_title_path..."
  }
  default_user_to_notify = {
    on_pending_user = [
      {
        additional_properties = "{ \"see\": \"documentation\" }"
        display_name          = "John"
        email                 = "j.doe@epilot.cloud"
        image_uri = {
          key          = "fuafjvoHKsudhfagweucjasdvga"
          original     = "https://fuafjvoHKsu.cloudimg.io/v7/e-mage-sam-bucket-dev.s3.eu-central-1.amazonaws.com/files/fuafjvoHKsudhfagweucjasdvga/original"
          thumbnail_32 = "https://fuafjvoHKsu.cloudimg.io/v7/e-mage-sam-bucket-dev.s3.eu-central-1.amazonaws.com/files/fuafjvoHKsudhfagweucjasdvga/original?w=32&h=32"
          thumbnail_64 = "https://fuafjvoHKsu.cloudimg.io/v7/e-mage-sam-bucket-dev.s3.eu-central-1.amazonaws.com/files/fuafjvoHKsudhfagweucjasdvga/original?w=64&h=64"
        }
        org_id  = "123"
        phone   = "12345 67890"
        type    = "user"
        user_id = "123456"
      }
    ]
  }
  design_id = "5da0a718-c822-403d-9f5d-20d4584e0528"
  domain    = "abc.com"
  email_templates = {
    advanced_auth                     = "5da0a718-c822-403d-9f5d-20d4584e0528"
    advanced_mfa                      = "5da0a718-c822-403d-9f5d-20d4584e0528"
    confirm_account                   = "5da0a718-c822-403d-9f5d-20d4584e0528"
    confirm_email_update              = "5da0a718-c822-403d-9f5d-20d4584e0528"
    forgot_password                   = "5da0a718-c822-403d-9f5d-20d4584e0528"
    invitation                        = "5da0a718-c822-403d-9f5d-20d4584e0528"
    journey_login_otp                 = "5da0a718-c822-403d-9f5d-20d4584e0528"
    journey_sign_in_one_time_password = "5da0a718-c822-403d-9f5d-20d4584e0528"
    journey_sign_up                   = "5da0a718-c822-403d-9f5d-20d4584e0528"
    on_doc_upload                     = "5da0a718-c822-403d-9f5d-20d4584e0528"
    on_map_a_pending_user             = "5da0a718-c822-403d-9f5d-20d4584e0528"
    on_new_quote                      = "5da0a718-c822-403d-9f5d-20d4584e0528"
    on_workflow_step_assigned         = "5da0a718-c822-403d-9f5d-20d4584e0528"
    verify_code_to_set_password       = "5da0a718-c822-403d-9f5d-20d4584e0528"
  }
  enabled = false
  entity_actions = [
    {
      action_label = {
        de = "...my_de..."
        en = "...my_en..."
      }
      journey_id = "5da0a718-c822-403d-9f5d-20d4584e0528"
      slug       = "contact"
    }
  ]
  entity_edit_rules = [
    {
      allowed_decrement                 = "10%"
      allowed_increment                 = "10%"
      attribute                         = "first_name"
      cadence_period                    = 1
      cadence_period_type               = "months"
      changes_allowed                   = 1
      grace_period                      = 1
      number_of_days_before_restriction = 10
      rule_type                         = "relative_to_current_value"
      slug                              = "contact"
    }
  ]
  entity_identifiers = {
    type = {
      attributes = [
        "contract_number"
      ]
      is_enabled = false
    }
  }
  extension_hooks = {
    app_id  = "...my_app_id..."
    hook_id = "...my_hook_id..."
  }
  extensions = [
    {
      id = "...my_id..."
      options = {
        key = "value",
      }
      status = "installed"
    }
  ]
  feature_settings = {
    billing         = true
    change_due_date = false
    new_design      = true
    start_page      = true
  }
  images = {
    order_left_teaser  = "https://epilot-bucket.s3.eu-central-1.amazonaws.com/12344/6538fddb-f0e9-4f0f-af51-6e57891ff20a/order-left-teaser.jpeg"
    order_right_teaser = "https://epilot-bucket.s3.eu-central-1.amazonaws.com/12344/6538fddb-f0e9-4f0f-af51-6e57891ff20a/order-right-teaser.jpeg"
    welcome_banner     = "https://epilot-bucket.s3.eu-central-1.amazonaws.com/12344/6538fddb-f0e9-4f0f-af51-6e57891ff20a/welcome-banner.jpeg"
  }
  inactive_contract_cutoff_years = 6.78
  is_epilot_domain               = true
  meter_reading_grace_period     = 9.12
  name                           = "Installer Portal"
  origin                         = "INSTALLER_PORTAL"
  pages = {
    additional_properties = "{ \"see\": \"documentation\" }"
    blocks = {
      additional_properties = "{ \"see\": \"documentation\" }"
      id                    = "c495fef9-eeca-4019-a989-8390dcd9825b"
      order                 = 1
      parent_id             = "c495fef9-eeca-4019-a989-8390dcd9825b"
      props = {
        additional_properties = "{ \"see\": \"documentation\" }"
        content = {
          # ...
        }
        design = {
          # ...
        }
        visibility = {
          # ...
        }
      }
      type = "tab"
    }
    content = {
      key = jsonencode("value"),
    }
    design = {
      key = jsonencode("value"),
    }
    id               = "c495fef9-eeca-4019-a989-8390dcd9825b"
    is_deleted       = false
    is_entry_route   = false
    is_public        = true
    is_system        = false
    last_modified_at = "2021-02-09T12:41:43.662Z"
    order            = 1
    parent_id        = "c495fef9-eeca-4019-a989-8390dcd9825b"
    path             = "/dashboard"
    schema = [
      "contact"
    ]
    slug = "dashboard"
    visibility = {
      key = jsonencode("value"),
    }
  }
  prevent_search_engine_indexing = true
  registration_identifiers = [
    {
      name   = "...my_name..."
      schema = "contact"
    }
  ]
  self_registration_setting = "ALLOW_WITHOUT_CONTACT_CREATION"
  triggered_journeys = [
    {
      journey_id   = "5da0a718-c822-403d-9f5d-20d4584e0528"
      trigger_name = "DECLINE_ORDER"
    }
  ]
}