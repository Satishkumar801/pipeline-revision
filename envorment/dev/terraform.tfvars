rgs = {
  "rg1" = {
    rg_name  = "test_rg"
    location = "Australia East"
  }
}
vnetname = {
  "vnet1" = {
    vnet_name     = "testvnet1"
    address_space = ["10.0.0.0/22"]
    location      = "Australia East"
    rg_name       = "test_rg"
  }
}
subnet = {
  "subnet1" = {
    snet_name        = "frountend-subnet"
    rg_name          = "test_rg"
    vnet_name        = "testvnet1"
    address_prefixes = ["10.0.0.0/24"]
  }
  "subnet2" = {
    snet_name        = "backendend-subnet"
    rg_name          = "test_rg"
    vnet_name        = "testvnet1"
    address_prefixes = ["10.0.1.0/24"]
  }
  "subnet3" = {
    snet_name        = "baistion-subnet"
    rg_name          = "test_rg"
    vnet_name        = "testvnet1"
    address_prefixes = ["10.0.2.0/24"]
  }
}
nicname = {
  "nic1" = {
    nic_name = "frountendnic1"
    location = "Australia East"
    rg_name  = "test_rg"
    ip_configuration = {
      ip1 = {
        ip_configuration_name         = "ipconfig1"
        private_ip_address_allocation = "Dynamic"
        # private_ip                    = "10.0.1.10"
        subnet_key                    = "datasnet1"
      }
  } }
  "nic2" = {
    nic_name = "backendnic1"
    location = "Australia East"
    rg_name  = "test_rg"
    ip_configuration = {
      ip1 = {
        ip_configuration_name         = "ipconfig2"
        private_ip_address_allocation = "Dynamic"
        # private_ip                    = "10.0.0.20"
        subnet_key                    = "datasnet2"
      }
  } }
}
datasnet = {
  "datasnet1" = {
    snet_name = "frountend-subnet"
    vnet_name = "testvnet1"
    rg_name   = "test_rg"
  }
  "datasnet2" = {
    snet_name = "backendend-subnet"
    vnet_name = "testvnet1"
    rg_name   = "test_rg"
  }
}

vms = {
  "vm1" = {
    vm_name              = "frountendvm"
    rg_name              = "test_rg"
    location             = "Australia East"
    size                 = "Standard_D2s_v3"
    admin_username       = "azureuser"
    admin_password       = "Azureuser@123"
    nic_key              = "nicdata1"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "ubuntu-24_04-lts"
    sku                  = "server"
    version              = "latest"
  }
  "vm2" = {
    vm_name              = "backendendvm"
    rg_name              = "test_rg"
    location             = "Australia East"
    size                 = "Standard_D2s_v3"
    # admin_username       = "azureuser"
    # admin_password       = "Azureuser@123"
    nic_key              = "nicdata2"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    publisher            = "Canonical"
    offer                = "ubuntu-24_04-lts"
    sku                  = "server"
    version              = "latest"
  }
}
datanic = {
  "nicdata1" = {
    nic_name = "frountendnic1"
    rg_name  = "test_rg"
  }
  "nicdata2" = {
    nic_name = "backendnic1"
    rg_name  = "test_rg"
  }
}