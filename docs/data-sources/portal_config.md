---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "epilot-portal_portal_config Data Source - terraform-provider-epilot-portal"
subcategory: ""
description: |-
  PortalConfig DataSource
---

# epilot-portal_portal_config (Data Source)

PortalConfig DataSource

## Example Usage

```terraform
data "epilot-portal_portal_config" "my_portalconfig" {
  origin = "INSTALLER_PORTAL"
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Optional

- `origin` (String) Origin of the portal

### Read-Only

- `access_token` (String) Access token for the portal
- `advanced_mfa` (Attributes) (see [below for nested schema](#nestedatt--advanced_mfa))
- `allowed_file_extensions` (Attributes) Allowed file extensions for upload (see [below for nested schema](#nestedatt--allowed_file_extensions))
- `approval_state_attributes` (String) Parsed as JSON.
- `auth_settings` (Attributes) Authentication settings for the portal (see [below for nested schema](#nestedatt--auth_settings))
- `cognito_details` (Attributes) AWS Cognito Pool details for the portal (see [below for nested schema](#nestedatt--cognito_details))
- `config` (String) Stringified object with configuration details
- `contact_identifiers` (List of String) Deprecated. Use registration_identifiers instead.
- `contract_identifiers` (Attributes List) Identifiers to identify a contract by a portal user. (see [below for nested schema](#nestedatt--contract_identifiers))
- `contract_selector_config` (Attributes) Configuration for contract selector in the portal (see [below for nested schema](#nestedatt--contract_selector_config))
- `design_id` (String) Entity ID
- `domain` (String) The URL on which the portal is accessible
- `email_templates` (Attributes) Email templates used for authentication and internal processes (see [below for nested schema](#nestedatt--email_templates))
- `enabled` (Boolean) Enable/Disable the portal access
- `entity_edit_rules` (Attributes List) Rules for editing an entity by a portal user (see [below for nested schema](#nestedatt--entity_edit_rules))
- `entity_identifiers` (Attributes) Identifiers used to identify an entity by a portal user. Deprecated. Use contract_identifiers instead. (see [below for nested schema](#nestedatt--entity_identifiers))
- `feature_flags` (Map of Boolean) Feature flags for the portal
- `feature_settings` (Attributes) Feature settings for the portal (see [below for nested schema](#nestedatt--feature_settings))
- `grants` (Attributes List) Permissions granted to a portal user while accessing entities (see [below for nested schema](#nestedatt--grants))
- `id` (String) ID of the organization
- `identity_providers` (Attributes List) (see [below for nested schema](#nestedatt--identity_providers))
- `images` (Attributes) Teaser & Banner Image web links (see [below for nested schema](#nestedatt--images))
- `inactive_contract_cutoff_years` (Number) Number of years to look back for showing inactive contracts in the portal
- `is_epilot_domain` (Boolean) Mark true if the domain is an Epilot domain
- `meter_reading_grace_period` (Number) Grace period in days for meter readings
- `name` (String) A short name to identify your portal
- `org_settings` (Attributes) Organization settings (see [below for nested schema](#nestedatt--org_settings))
- `organization_id` (String) ID of the organization
- `pages` (Attributes Map) (see [below for nested schema](#nestedatt--pages))
- `prevent_search_engine_indexing` (Boolean) Prevent indexing by search engines
- `registration_identifiers` (Attributes List) Identifiers to identify a contact of a portal user during the registration. (see [below for nested schema](#nestedatt--registration_identifiers))
- `self_registration_setting` (String)
- `triggered_journeys` (Attributes List) Journeys automatically opened on a portal user action (see [below for nested schema](#nestedatt--triggered_journeys))

<a id="nestedatt--advanced_mfa"></a>
### Nested Schema for `advanced_mfa`

Read-Only:

- `enabled` (Boolean) Advanced MFA feature flag


<a id="nestedatt--allowed_file_extensions"></a>
### Nested Schema for `allowed_file_extensions`

Read-Only:

- `archive` (List of String)
- `audio_video` (List of String)
- `cad` (List of String)
- `calendar` (List of String)
- `document` (List of String)
- `email` (List of String)
- `image` (List of String)
- `other` (List of String)
- `presentation` (List of String)
- `spreadsheet` (List of String)


<a id="nestedatt--auth_settings"></a>
### Nested Schema for `auth_settings`

Read-Only:

- `entry_point` (String)
- `passwordless_login` (Attributes) (see [below for nested schema](#nestedatt--auth_settings--passwordless_login))
- `preferred_sso_providers` (List of String)

<a id="nestedatt--auth_settings--passwordless_login"></a>
### Nested Schema for `auth_settings.passwordless_login`

Read-Only:

- `enabled` (Boolean) Passwordless login feature flag



<a id="nestedatt--cognito_details"></a>
### Nested Schema for `cognito_details`

Read-Only:

- `cognito_user_pool_arn` (String) Cognito user pool ARN
- `cognito_user_pool_client_id` (String) Cognito user pool client ID
- `cognito_user_pool_id` (String) Cognito user pool ID
- `password_policy` (Attributes) Password policy for the portal (see [below for nested schema](#nestedatt--cognito_details--password_policy))

<a id="nestedatt--cognito_details--password_policy"></a>
### Nested Schema for `cognito_details.password_policy`

Read-Only:

- `minimum_length` (Number) Minimum password length
- `require_lowercase` (Boolean) Require lowercase characters
- `require_numbers` (Boolean) Require numbers
- `require_symbols` (Boolean) Require symbols
- `require_uppercase` (Boolean) Require uppercase characters



<a id="nestedatt--contract_identifiers"></a>
### Nested Schema for `contract_identifiers`

Read-Only:

- `name` (String) Name of the identifier/attribute
- `schema` (String) URL-friendly identifier for the entity schema


<a id="nestedatt--contract_selector_config"></a>
### Nested Schema for `contract_selector_config`

Read-Only:

- `show_inactive` (Boolean) Whether to show inactive contracts in the selector
- `title_path` (String) Path to the property to use as the contract title


<a id="nestedatt--email_templates"></a>
### Nested Schema for `email_templates`

Read-Only:

- `advanced_auth` (String) Entity ID
- `advanced_mfa` (String) Entity ID
- `confirm_account` (String) Entity ID
- `confirm_email_update` (String) Entity ID
- `forgot_password` (String) Entity ID
- `invitation` (String) Entity ID
- `journey_login_otp` (String) Entity ID
- `journey_sign_in_one_time_password` (String) Entity ID
- `journey_sign_up` (String) Entity ID
- `on_doc_upload` (String) Entity ID
- `on_map_a_pending_user` (String) Entity ID
- `on_new_quote` (String) Entity ID
- `on_workflow_step_assigned` (String) Entity ID
- `verify_code_to_set_password` (String) Entity ID


<a id="nestedatt--entity_edit_rules"></a>
### Nested Schema for `entity_edit_rules`

Read-Only:

- `allowed_decrement` (String)
- `allowed_increment` (String)
- `attribute` (String)
- `cadence_period` (Number)
- `cadence_period_type` (String)
- `changes_allowed` (Number)
- `grace_period` (Number)
- `number_of_days_before_restriction` (Number)
- `rule_type` (String)
- `slug` (String) URL-friendly identifier for the entity schema


<a id="nestedatt--entity_identifiers"></a>
### Nested Schema for `entity_identifiers`

Read-Only:

- `type` (Attributes) (see [below for nested schema](#nestedatt--entity_identifiers--type))

<a id="nestedatt--entity_identifiers--type"></a>
### Nested Schema for `entity_identifiers.type`

Read-Only:

- `attributes` (List of String) Attributes used to identify an entity
- `is_enabled` (Boolean) Enable/Disable the entity identifier



<a id="nestedatt--feature_settings"></a>
### Nested Schema for `feature_settings`

Read-Only:

- `billing` (Boolean) Billing feature flag
- `change_due_date` (Boolean) Change due date feature flag
- `new_design` (Boolean) Enable or disable the new design for the portal
- `start_page` (Boolean) Start page feature flag


<a id="nestedatt--grants"></a>
### Nested Schema for `grants`

Read-Only:

- `action` (String) Action for granting permission
- `effect` (String) Effect of the permission
- `resource` (String) Resource for granting permission


<a id="nestedatt--identity_providers"></a>
### Nested Schema for `identity_providers`

Read-Only:

- `display_name` (String) Human-readable display name for identity provider shown in login
- `mobile_oidc_config` (Attributes) (see [below for nested schema](#nestedatt--identity_providers--mobile_oidc_config))
- `oidc_config` (Attributes) (see [below for nested schema](#nestedatt--identity_providers--oidc_config))
- `slug` (String) URL-friendly slug to use as organization-unique identifier for Provider

<a id="nestedatt--identity_providers--mobile_oidc_config"></a>
### Nested Schema for `identity_providers.mobile_oidc_config`

Read-Only:

- `client_id` (String) Client ID for the mobile app
- `client_secret` (String) Client Secret for the mobile app


<a id="nestedatt--identity_providers--oidc_config"></a>
### Nested Schema for `identity_providers.oidc_config`

Read-Only:

- `client_id` (String)
- `client_secret` (String)
- `metadata` (Attributes) (see [below for nested schema](#nestedatt--identity_providers--oidc_config--metadata))
- `oidc_issuer` (String) Issuing Authority URL
- `prompt` (String)
- `redirect_uri` (String) Redirect URI for the OIDC flow
- `scope` (String) Space-separated list of OAuth 2.0 scopes to request from OpenID Connect

<a id="nestedatt--identity_providers--oidc_config--metadata"></a>
### Nested Schema for `identity_providers.oidc_config.metadata`

Read-Only:

- `authorization_endpoint` (String) URL of the authorization endpoint
- `mobile_redirect_uri` (String) URL of the mobile redirect URI
- `token_endpoint` (String) URL of the token endpoint
- `userinfo_endpoint` (String) URL of the userinfo endpoint




<a id="nestedatt--images"></a>
### Nested Schema for `images`

Read-Only:

- `order_left_teaser` (String) URL of the order left teaser image
- `order_right_teaser` (String) URL of the order right teaser image
- `welcome_banner` (String) URL of the welcome banner image


<a id="nestedatt--org_settings"></a>
### Nested Schema for `org_settings`

Read-Only:

- `canary` (Attributes) Canary feature flag (see [below for nested schema](#nestedatt--org_settings--canary))
- `notracking` (Attributes) Disable Advanced Usage Metrics (see [below for nested schema](#nestedatt--org_settings--notracking))

<a id="nestedatt--org_settings--canary"></a>
### Nested Schema for `org_settings.canary`

Read-Only:

- `enabled` (Boolean) Enable/Disable the canary feature


<a id="nestedatt--org_settings--notracking"></a>
### Nested Schema for `org_settings.notracking`

Read-Only:

- `enabled` (Boolean) Disable browser-side scripts that track advanced usage metrics



<a id="nestedatt--pages"></a>
### Nested Schema for `pages`

Read-Only:

- `additional_properties` (String) Parsed as JSON.
- `blocks` (Attributes Map) (see [below for nested schema](#nestedatt--pages--blocks))
- `content` (Map of String) The content of the page
- `design` (Map of String) The design of the page
- `id` (String) The id of the page
- `is_deleted` (Boolean) Send the flag as true to delete the page
- `is_entry_route` (Boolean) Whether the page is the entry route
- `is_public` (Boolean) Whether the page is public
- `is_system` (Boolean) Whether the page is a system page
- `last_modified_at` (String) Last modified timestamp of the Page
- `order` (Number) The order of the block
- `parent_id` (String) The id of the parent page
- `path` (String) The path of the page
- `schema` (List of String)
- `slug` (String) The slug of the page
- `visibility` (Map of String) The conditions that need to be met for the page to be shown

<a id="nestedatt--pages--blocks"></a>
### Nested Schema for `pages.blocks`

Read-Only:

- `additional_properties` (String) Parsed as JSON.
- `id` (String) The id of the block
- `order` (Number) The order of the block
- `parent_id` (String) The id of the parent block
- `props` (Attributes) (see [below for nested schema](#nestedatt--pages--blocks--props))
- `type` (String) The type of the block. eg; tabs, tab, group, attribute

<a id="nestedatt--pages--blocks--props"></a>
### Nested Schema for `pages.blocks.props`

Read-Only:

- `additional_properties` (String) Parsed as JSON.
- `content` (Attributes) The content of the block (see [below for nested schema](#nestedatt--pages--blocks--props--content))
- `design` (Attributes) The design of the block (see [below for nested schema](#nestedatt--pages--blocks--props--design))
- `visibility` (Attributes) The conditions that need to be met for the block to be shown (see [below for nested schema](#nestedatt--pages--blocks--props--visibility))

<a id="nestedatt--pages--blocks--props--content"></a>
### Nested Schema for `pages.blocks.props.content`


<a id="nestedatt--pages--blocks--props--design"></a>
### Nested Schema for `pages.blocks.props.design`


<a id="nestedatt--pages--blocks--props--visibility"></a>
### Nested Schema for `pages.blocks.props.visibility`





<a id="nestedatt--registration_identifiers"></a>
### Nested Schema for `registration_identifiers`

Read-Only:

- `name` (String) Name of the identifier/attribute
- `schema` (String) URL-friendly identifier for the entity schema


<a id="nestedatt--triggered_journeys"></a>
### Nested Schema for `triggered_journeys`

Read-Only:

- `journey_id` (String) Entity ID
- `trigger_name` (String)
