terraform {
  required_version = ">= 1.0.1"
  required_providers {
    azurerm = {
      version = "~> 3.21.1"
    }
  }
}

provider "azurerm" {
  features {}
}
module "service_principal" {
  source = "./../../"

  teamid = var.teamid
  prjid  = var.prjid

  role   = var.role
  scopes = var.scopes
}
