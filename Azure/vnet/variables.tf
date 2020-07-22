variable "location" {
  type        = string
  description = "(Required) Azure location name"
}
variable "resource_group_name" {
  type        = string
  description = "(Required) Azure resource group name"
}
variable "name" {
  type        = string
  description = "(Required) Azure virtual network name"
}

variable "address_space" {
  type        = list(string)
  description = "(Required) Azure vritual network address spaces"
}

variable "dns_servers" {
  type        = list(string)
  description = "(Optional) Dns server list string is null by default"
  default     = []
}

