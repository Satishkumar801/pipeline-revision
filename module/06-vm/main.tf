resource "azurerm_linux_virtual_machine" "vm" {
    for_each = var.virtual_machine
  name                = each.value.vm_name
  resource_group_name = each.value.rg_name
  location            = each.value.location
  size                = each.value.size
  admin_username      = data.azurerm_key_vault_secret.secret1[each.key].value
  admin_password = data.azurerm_key_vault_secret.secret2[each.key].value
  disable_password_authentication = false
  network_interface_ids = [data.azurerm_network_interface.nicdata[each.value.nic_key].id]

#   admin_ssh_key {
#     username   = "adminuser"
#     public_key = file("~/.ssh/id_rsa.pub")
#   }

  os_disk {
    caching              = each.value.caching
    storage_account_type = each.value.storage_account_type
  }

  source_image_reference {
    publisher = each.value.publisher
    offer     = each.value.offer
    sku       = each.value.sku
    version   = each.value.version
  }
}
data "azurerm_key_vault" "key" {
  for_each = var.virtual_machine
  name                = "rajiv-infra"
  resource_group_name = "rajiv-test"
}
data "azurerm_key_vault_secret" "secret1" {
  for_each = var.virtual_machine
  name         = "vmname"
  key_vault_id = data.azurerm_key_vault.key.id
}
data "azurerm_key_vault_secret" "secret2" {
  for_each = var.virtual_machine
  name         = "vmpassword"
  key_vault_id = data.azurerm_key_vault.key.id
}




