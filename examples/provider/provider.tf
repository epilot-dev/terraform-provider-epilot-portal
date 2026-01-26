terraform {
  required_providers {
    epilot-portal = {
      source  = "epilot-dev/epilot-portal"
      version = "0.26.3"
    }
  }
}

provider "epilot-portal" {
  server_url = "..." # Optional
}