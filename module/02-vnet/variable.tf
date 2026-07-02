variable "vnet_name" {
  type = map(object({
    vnet_name = string
    address_space = list(string)
    location = string
    rg_name = string
  }))
}