variable "sub_network" {
  type = map(object({
    snet_name = string
    rg_name = string
    vnet_name = string
    address_prefixes = list(string)
  }))
}