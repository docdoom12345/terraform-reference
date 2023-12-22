terraform {
  backend "azurerm" {
    resource_group_name  = "sai-remotestate"
    storage_account_name = "sai124124132341"
    container_name       = "sai-terraform"
    key                  = "terraform.tfstate"
  }
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

}