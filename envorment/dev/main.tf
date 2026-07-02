module "rg" {
  source  = "../../module/01-resourcegroup"
  rg_name = var.rgs
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../module/02-vnet"
  vnet_name  = var.vnetname
}

module "subnet" {
  depends_on  = [module.vnet]
  source      = "../../module/03-subnet"
  sub_network = var.subnet
}

module "nic" {
  depends_on  = [module.subnet]
  source      = "../../module/04-nic"
  nic_name    = var.nicname
  data_subnet = var.datasnet
}
module "vm" {
    depends_on = [ module.nic,module.rg ]
  source          = "../../module/06-vm"
  virtual_machine = var.vms
  data_nic        = var.datanic
}



