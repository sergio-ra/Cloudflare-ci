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

provider "cloudflare" {}

data "cloudflare_zones" "domain" {
  filter {
    name = var.site_domain
  }
}

#resource "cloudflare_record" "site_cname" {
#  zone_id = data.cloudflare_zones.domain.zones[0].id
#  name    = var.site_domain
#  value   = test.site.website_endpoint
#  type    = "CNAME"

#  ttl     = 1
#  proxied = true
#}

resource "cloudflare_record" "www" {
  zone_id = data.cloudflare_zones.domain.zones[0].id
  name    = "wууцww"
  value   = var.site_domain
  type    = "CNAME"

  ttl     = 1
  proxied = true
}

resource "cloudflare_record" "www" {
  zone_id = data.cloudflare_zones.domain.zones[0].id
  #domain  = "${var.domain}"
  name    = "testci"
  value   = "203.0.113.10"
  type    = "A"
  proxied = true
}

