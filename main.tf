terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-terra" {
  name     = "rg-terraform"
  location = "Central India"
  tags = {
    environment = "dev"
  }
}