resource "azurerm_public_ip" "example" {
  count               = length(var.public_ip)      #list of public ip
  name                = var.public_ip[count.index] #index position
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  allocation_method   = "Static"
  tags                = var.resource_tags
}

resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_resource_group" "name" {
  for_each = var.resource_groups #looping through a map
  name     = each.key #resource group name
  location = each.value #resource location
}

