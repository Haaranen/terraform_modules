variable "resource_group_name" {
  type        = string
  description = "(Required) Azure resource group name"
}

variable "location" {
  type = string
  description = "(Required) Azure location"
}

variable "name" {
  type = string
  description = "(Required) Azure key vault name"
}

variable "disk_encryption" {
  type = bool
  description = "(Optional) Azure key vault enabled for disk encryption"
  default = false
}

variable "soft_delete" {
  type = bool
  description = "(Optional) Azure key vault soft delete enabled"
  default = true
}

variable "purge_protection" {
  type = bool
  description = "(Optional) Azure key vault purge protection enabled"
}

variable "sku" {
  type = string
  description = "(Optional) Azure Key vault sku name"
  default = "standard"
}

variable "access_policy" {
  type = map(object({
    tenant_id = string
    object_id = string
    key_permissions = list(string)
    secret_permissions = list(string)
    storage_permissions = list(string)
  }))
  description = "(Optional) Azure key vaul access policy"
  default = []
}

variable "network_acls" {
  type = map(object({
    default_action = string
    bypass = string
    ip_rules = list(string)
    virtual_network_subnet_ids = list(string)
  }))
  description = "(Optional) Azure key vault network access control list"
  default = []
}