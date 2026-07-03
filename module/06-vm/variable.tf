variable "data_nic" {
  type = map(object({
    nic_name = string
    rg_name = string
  }))
}
variable "virtual_machine" {
  type = map(object({
    vm_name = string
    rg_name = string
    location = string
    size = string
    # admin_username = string
    # admin_password = string
    nic_key = string
    caching = string
    storage_account_type = string
    publisher = string
    offer = string
    sku = string
    version = string
     
  }))
}
