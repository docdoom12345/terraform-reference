terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
  required_version = ">=1.6.0"
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}

  client_id       = "fde5c56c-b243-4f90-93e6-cda8ad30cbd0"     #appID
  client_secret   = "lGj8Q~a7aaBKJjmLvlOxGeJ64qhM6siU4Od69a4M" #password                                    #password
  tenant_id       = "cea297cb-9bde-428d-9a6e-48fa9c582ed6"     #tenant
  subscription_id = "2a79f2da-f098-4c8a-8e2a-f426682b1eac"     #subscription ID
}