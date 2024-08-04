### cftf
helper modules to quickly create new DNS records in cloudflare. 

### usage 
```hcl
terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4.0"
    }
  }
}

data "cloudflare_zones" "example_dev_zone" {
  filter {
    name = "example.dev"
  }
}

module "single_dns_record" {
  source = "./modules/dns-record"
  zone_id    = data.cloudflare_zones.example_dev_zone.zones[0].id
  subdomain  = "cftf"
  ip_address = "96.97.98.99"
}

module "list_of_dns_records" {
    source = "./modules/dns-record-list"
    zone_id = data.cloudflare_zones.example_dev_zone.zones[0].id
    subdomains_list = ["cftf1", "cftf2", "cftf3"]
    ip_address = "96.97.98.99"
}
```

- list of variables required can be found in `variables.tf` file of respective module.
