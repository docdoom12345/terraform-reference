resource "azurerm_resource_group" "example" {
  name     = "sai-resources"
  location = var.location
}

resource "azurerm_storage_account" "example" {
  name                     = "sai1242535235"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = var.location == "westeurope" ? "LRS" : "GRS"

  tags = {
    environment = "staging"
  }
}