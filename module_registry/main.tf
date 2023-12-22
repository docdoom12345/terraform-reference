module "vnet" {
  source  = "Azure/vnet/azurerm"
  version = "4.1.0"
  # insert the 3 required variables here
  resource_group_name = "test-vnet" #resource group should already exist in azure
  vnet_location       = "west us" 
  use_for_each        = false
}