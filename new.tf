resource "cloudflare_record" "testc3icd" {
  zone_id = var.zone_id
  name    = "testc3icd"
  value   = "203.12.13.111"
  type    = "A"
  proxied = true
}