terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 3.0"
    }
  }
}
provider "cloudflare" {
#    api_token = {{secrets.CF_API_TOKEN}}
}

variable "domain" {
  default = "megabank.net"
}

resource "cloudflare_record" "www" {
  zone_id = "93be47cd9bf8560c9826cb1c012afbfa"
  #domain  = "${var.domain}"
  name    = "testci"
  value   = "203.0.113.10"
  type    = "A"
  proxied = true
}