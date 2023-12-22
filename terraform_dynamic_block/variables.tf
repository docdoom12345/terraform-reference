variable "nsg_rules" {
  description = "nsg rules"
  type = list(object({
    name                       = string #single line comment /* multi line comment */
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}