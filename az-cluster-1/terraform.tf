# Terraform backend configuration

terraform {
  backend "remote" {
    organization = "chfrank-cgn"

    workspaces {
      name = "compute-prod-westeurope"
    }
  }

  required_version = ">= 0.12"

  required_providers {
    local = "~> 1.4"
    null = "~> 2.1"
    rancher2 = "~> 1.9"
    random = "~> 2.2"
  }
}

