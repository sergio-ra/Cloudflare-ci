resource "cloudflare_record" "testc3icd5" {
  zone_id = var.CF_ZONE_ID_MGB_NET
  name    = "testc3icd5"
  value   = "203.12.13.111"
  type    = "A"
  proxied = true
}
