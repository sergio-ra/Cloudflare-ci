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

provider "cloudflare" {
  api_token = var.CLOUDFLARE_API_TOKEN
}

resource "cloudflare_record" "testcicd4" {
  zone_id = var.CF_ZONE_ID_MGB_NET
  name    = "testcicd4"
  value   = "203.12.13.111"
  type    = "A"
  proxied = true
}
