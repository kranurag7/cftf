resource "cloudflare_record" "records" {
  for_each = toset(var.subdomains_list)
  zone_id  = var.zone_id
  name     = each.value
  value    = var.ip_address
  type     = "A"
  ttl      = 1
  proxied  = false
}
