---
# generated by https://github.com/hashicorp/terraform-plugin-docs
page_title: "epilot-portal Provider"
subcategory: ""
description: |-
  Portal API: Backend for epilot portals - End Customer Portal & Installer Portal
---

# epilot-portal Provider

Portal API: Backend for epilot portals - End Customer Portal & Installer Portal

## Example Usage

```terraform
terraform {
  required_providers {
    epilot-portal = {
      source  = "epilot-dev/epilot-portal"
      version = "0.21.4"
    }
  }
}

provider "epilot-portal" {
  # Configuration options
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Optional

- `either_auth` (String, Sensitive)
- `epilot_auth` (String, Sensitive)
- `portal_auth` (String, Sensitive)
- `server_url` (String) Server URL (defaults to https://customer-portal-api.sls.epilot.io)
