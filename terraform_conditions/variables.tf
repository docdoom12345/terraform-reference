variable "location" {
  description = "resource location"
  type        = string
  validation {
    condition = var.location == "westeurope" 
    error_message = "The location must be west europe"
  }
}