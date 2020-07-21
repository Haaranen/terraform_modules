variable "resource_group_name" {
  type        = string
  description = "(Required) Azure resource group name"
}

variable "location" {
  type = string
  description = "(Required) Azure location"
}

variable "tenant_id" {
  type = string
  description = "(Required) Azure key vault azure ad tenant id"
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
  default = true
}

variable "sku" {
  type = string
  description = "(Optional) Azure Key vault sku name"
  default = "standard"
}

variable "network_acls" {
  type = map(object({
    default_action = string
    bypass = string
    ip_rules = list(string)
    virtual_network_subnet_ids = list(string)
  }))
  description = "(Optional) Azure key vault network access control list"
  default = {
    map0 = {
      default_action = "Allow"
      bypass = "AzureServices"
      ip_rules = []
      virtual_network_subnet_ids = []
    }
  }
}