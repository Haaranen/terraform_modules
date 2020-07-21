resource "azurerm_key_vault" "az_key_vault" {
  for_each = var.network_acls

  name                        = var.name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  enabled_for_disk_encryption = var.disk_encryption
  tenant_id                   = var.tenant_id
  soft_delete_enabled         = var.soft_delete
  purge_protection_enabled    = var.purge_protection
  sku_name                    = var.sku

  network_acls {
    default_action             = each.value.default_action
    bypass                     = each.value.bypass
    ip_rules                   = each.value.ip_rules
    virtual_network_subnet_ids = each.value.virtual_network_subnet_ids
  }
}
