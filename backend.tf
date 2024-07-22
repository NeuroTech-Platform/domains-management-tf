terraform {
  cloud {
    organization = "CHUV-Neurotech"
    hostname     = "app.terraform.io"
    workspaces {
      name = "domains-management-tf"
    }
  }

  required_providers {
    exoscale = {
      source  = "exoscale/exoscale"
      version = "0.59.2"
    }
  }
}
