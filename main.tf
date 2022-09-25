terraform {
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

resource "cloudflare_record" "foobar" {
  zone_id = var.cloudflare_zone_id
  name    = "terraform"
  value   = "192.168.0.11"
  type    = "A"
  ttl     = 3600
}

#resource "cloudflare_record" "site_cname" {
#  zone_id = data.cloudflare_zones.domain.zones[0].id
#  name    = var.site_domain
#  value   = test.var.site_domain
#  type    = "CNAME"

#  ttl     = 1
#  proxied = true
#}

#resource "cloudflare_record" "www" {
#  zone_id = data.cloudflare_zones.domain.zones[0].id
#  name    = "www"
#  value   = var.site_domain
#  type    = "CNAME"

#  ttl     = 1
#  proxied = true
#}
