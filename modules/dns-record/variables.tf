variable "zone_id" {
  description = "The ID of the DNS zone"
  type        = string
}

variable "subdomain" {
  description = "The subdomain to create"
  type        = string
}

variable "ip_address" {
  description = "The IP address for the DNS record"
  type        = string
}