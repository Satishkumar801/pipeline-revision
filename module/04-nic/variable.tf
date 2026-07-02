
variable "data_subnet" {
  type = map(object({
    snet_name = string
    vnet_name = string
    rg_name   = string
  }))
}
variable "nic_name" {
  type = map(object({
    nic_name = string
    location = string
    rg_name = string
    ip_configuration = map(object({
      ip_configuration_name = string
      private_ip_address_allocation = string
      # private_ip = string
      subnet_key = string
    }))
  }))
}