variable "rg_name" {
    type = map(object({
      rg_name = string
      location = string
    }))
  
}