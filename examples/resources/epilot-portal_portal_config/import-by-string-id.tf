# import {
#   to = epilot-portal_portal_config.my_epilot-portal_portal_config
#   id = "2dfe4379-3066-420a-aa3e-f77626fea627"
# }

resource "epilot-portal_portal_config" "my_epilot-portal_portal_config" {}

terraform {
  required_providers {
    epilot-portal = {
      source  = "epilot-dev/epilot-portal"
      version = "0.26.2"
    }
  }
}

provider "epilot-portal" {
  epilot_auth = ""
}