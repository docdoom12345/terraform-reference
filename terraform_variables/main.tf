resource "azurerm_public_ip" "example" {
  name                = "sai-public-ip"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"

  tags = {
    environment = "Production"
  }
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}
