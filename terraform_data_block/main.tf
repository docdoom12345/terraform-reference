data "azurerm_resource_group" "example" {
  name = "testing"
}

output "rg_details" {
  value = data.azurerm_resource_group.example
  sensitive = true
}
