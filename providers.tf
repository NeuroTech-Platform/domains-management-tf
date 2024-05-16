variable "exoscale_api_key" {}
variable "exoscale_api_secret" {}

provider "exoscale" {
  key    = var.exoscale_api_key
  secret = var.exoscale_api_secret
}
