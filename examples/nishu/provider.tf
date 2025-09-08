terraform {
  required_providers {
    epilot-portal = {
      source  = "epilot-dev/epilot-portal"
      version = "0.3.0"
    }
  }
}

provider "epilot-portal" {
  epilot_auth = ""
  server_url = "https://customer-portal-api.dev.sls.epilot.io/"
}



