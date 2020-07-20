output "subnet_ids_map" {

  depends_on = [azurerm_network_security_group.nsg_object,azurerm_subnet.subnets ]
  value = azurerm_subnet.subnets
}