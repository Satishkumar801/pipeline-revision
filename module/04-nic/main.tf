resource "azurerm_network_interface" "nic" {

  for_each = var.nic_name

  name                = each.value.nic_name
  location            = each.value.location
  resource_group_name = each.value.rg_name

  dynamic "ip_configuration" {

    for_each = each.value.ip_configuration

    content {

      name = ip_configuration.value.ip_configuration_name

      subnet_id = data.azurerm_subnet.datasnet[
        ip_configuration.value.subnet_key
      ].id

      private_ip_address_allocation = ip_configuration.value.private_ip_address_allocation
      # private_ip_address = each.value.private_ip
    }
  }
}


data "azurerm_subnet" "datasnet" {
  for_each = var.data_subnet

  name                 = each.value.snet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}




