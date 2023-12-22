output "ipaddresses" {
  value = azurerm_public_ip.example[*].ip_address #splat expression
}
output "listresult" {
  value = element(var.public_ip, 3)
}
output "mapresult" {
  value = lookup(var.resource_tags, lower("Environment"),"Key not found")
}
output "zipmapresult" {
  value = zipmap(azurerm_public_ip.example[*].name, azurerm_public_ip.example[*].ip_address)
}