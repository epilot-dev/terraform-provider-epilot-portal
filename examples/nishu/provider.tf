terraform {
  required_providers {
    epilot-portal = {
      source  = "epilot-dev/epilot-portal"
      version = "0.1.0"
    }
  }
}

variable "epilot_auth" {
  type = string
}

provider "epilot-portal" {
  epilot_auth = var.epilot_auth
}