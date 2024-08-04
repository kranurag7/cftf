variable "zone_id" {
  description = "The ID of the DNS zone"
  type        = string
}

variable "ip_address" {
  description = "The IP address for the DNS record"
  type        = string
}

variable "subdomains_list" {
  type        = list(string)
  description = "this is the list of subdomains that will be created and is usually used when you want to set a lot of subdomains at once"
  default     = []
}