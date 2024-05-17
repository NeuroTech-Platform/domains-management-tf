variable "exoscale_api_key" {}
variable "exoscale_api_secret" {
    sensitive = true
}

provider "exoscale" {
  key    = var.exoscale_api_key
  secret = var.exoscale_api_secret
}
