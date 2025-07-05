terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.27.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5ddcc00c-a8a0-4839-8d63-c4f0a44646b7"
}