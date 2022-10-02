terraform {
  required_providers {
    cloudflare = {
      source = "cloudflare/cloudflare"
    }
    random = {
      source = "hashicorp/random"
    }
  }

  cloud {
    organization = "sl-test"

    workspaces {
      name = "test-cloudflare"
    }
  }
}

variable "zone_id" {
  default = "93be47cd9bf8560c9826cb1c012afbfa"
}

variable "domain" {
  default = "megabank.net"
}

resource "cloudflare_record" "www" {
  zone_id = var.zone_id
  name    = "testcicd"
  value   = "203.1.113.11"
  type    = "A"
  proxied = true
}
