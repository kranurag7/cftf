resource "cloudflare_record" "single_record" {
  zone_id = var.zone_id
  name    = var.subdomain
  value   = var.ip_address
  type    = "A"
  ttl     = 1
  proxied = false
}

