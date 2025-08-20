terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.21.1"
    }
  }
}

provider "azurerm" {
  subscription_id = "2f58bc69-5c25-4e57-96df-4f99e2da2be7"
  features {}
}



resource "azurerm_resource_group" "main" {
  name     = "rg-test-01"
  location = "westus"
}



