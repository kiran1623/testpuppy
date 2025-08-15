terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.21.1"
    }
  }
}

provider "azurerm" {
  subscription_id = "c30a9880-60c2-4613-b1ed-fd523ed22583"
  features {}
}



resource "azurerm_resource_group" "main" {
  name     = "rg-test-01"
  location = "westus"
}

