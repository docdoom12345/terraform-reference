resource_group_name = "sai-example-resources"
location            = "West Europe"
public_ip           = ["development-ip", "testing-ip", "staging-ip", "quality-ip"]
resource_tags = {
  "environment"  = "Production"
  "location"     = "west europe"
  "subscription" = "prod"
}
resource_groups = {
  "sai-us"     = "east us"
  "sai-europe" = "west europe"
  "sai-india"  = "central india"
}