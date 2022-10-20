terraform {
  required_version = ">= 1.0.1"
  required_providers {
    azurerm = {
      version = "~> 3.21.1"
    }
    time = {
      source  = "hashicorp/time"
      version = "0.7.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
    azuread = {
      source  = "hashicorp/azuread"
      version = "2.29.0"
    }
  }
}
