variable "rgs" {
  type = map(object({
    rg_name  = string
    location = string
  }))
}
variable "vnetname" {
  type = map(object({
    vnet_name     = string
    address_space = list(string)
    location      = string
    rg_name       = string
  }))
}

variable "subnet" {
  type = map(object({
    snet_name        = string
    rg_name          = string
    vnet_name        = string
    address_prefixes = list(string)
  }))
}
# variable "nicname" {
#   type = map(object({
#     nic_name = string
#     location = string
#     rg_name  = string
#     ip_configuration = map(object({
#       ip_configuration_name         = string
#       private_ip_address_allocation = string
#       # private_ip                    = string
#       subnet_key                    = string
#     }))
#   }))
# }
variable "nicname" {
  type = map(object({
    nic_name = string
    location = string
    rg_name  = string
    ip_configuration = map(object({
      ip_configuration_name         = string
      private_ip_address_allocation = string
      # private_ip                    = string
      subnet_key                    = string
    }))
  }))
}

variable "datasnet" {
  type = map(object({
    snet_name = string
    vnet_name = string
    rg_name   = string
  }))
}

variable "datanic" {
  type = map(object({
    nic_name = string
    rg_name  = string
  }))
}
variable "vms" {
  type = map(object({
    vm_name              = string
    rg_name              = string
    location             = string
    size                 = string
    # admin_username       = string
    # admin_password       = string
    nic_key              = string
    caching              = string
    storage_account_type = string
    publisher            = string
    offer                = string
    sku                  = string
    version              = string
  }))
}
