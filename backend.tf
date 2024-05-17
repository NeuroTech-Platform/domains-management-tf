terraform {
  cloud {
    organization = "CHUV-Neurotech"
    hostname     = "app.terraform.io"
    workspaces {
      name = "domains-management-tf"
    }
  }
}
