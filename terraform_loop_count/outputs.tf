output "ipaddresses"{
    value = azurerm_public_ip.example[*].ip_address #splat expression
}