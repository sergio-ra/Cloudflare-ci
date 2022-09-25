terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
    #  version = "2.19.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}
