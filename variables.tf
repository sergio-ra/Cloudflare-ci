variable "aws_region" {
  type        = string
  description = "The AWS region to put the bucket into"
  default     = "us-east-1"
}

variable "site_domain" {
  type        = string
  description = "The domain name to use for the static site"
}

variable "CF_API_TOKEN" {
  type        = string
  description = "Cloudflare API token"
  default     = ""
}

#variable "CF_API_TOKEN" {
#  description = "Cloudflare API token"
#  type = string
#  default = ""
#}
