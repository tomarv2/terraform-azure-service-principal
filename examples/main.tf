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

data "azuread_client_config" "current" {}
module "service_principal" {
  source = "./../"

  applications_config = {
    "app1" = {
      owners           = [data.azuread_client_config.current.object_id]
      sign_in_audience = "AzureADMyOrg"
    }
  }
  teamid = var.teamid
  prjid  = var.prjid
}
