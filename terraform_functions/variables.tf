variable "resource_group_name" {
  type        = string
  description = "resource group name"
}
variable "location" {
  type        = string
  description = "resource group location"
}
variable "public_ip" {
  type        = list(string)
  description = "public ip names"
  default     = ["development-ip", "testing-ip", "staging-ip"]
}
variable "resource_tags" {
  type        = map(any)
  description = "tags for resources"
}
variable "resource_groups" {
  type        = map(any)
  description = "resource groups"
}