p-var-rg = {
        rg1 = {
    rg_name = "rg-lab"
    location = "japanwest"
        }
    }


    p-var-vnet = {
        vnet1 = {
    vnet_name = "vnet-lab"
    location = "japanwest"
    resource_group_name = "rg-lab"
    address_space = ["192.168.1.0/24"]
        }
    }

    p-var-subnet = {
        subnet1 = {
    subnet_name = "subnet-lab-1"
    resource_group_name = "rg-lab"
    virtual_network_name = "vnet-lab"
    address_prefixes = ["192.168.1.0/25"]
        }

        subnet2 = {
    subnet_name = "subnet-lab-2"
    resource_group_name = "rg-lab"
    virtual_network_name = "vnet-lab"
    address_prefixes = ["192.168.1.128/25"]
        }
    }


    p-var-pip = {
        pip1 = {
  pip_name                = "pip-lab-1"
  resource_group_name = "rg-lab"
  location            = "japanwest"
  allocation_method   = "Static"
        }

        pip2 = {
  pip_name            = "pip-lab-2"
  resource_group_name = "rg-lab"
  location            = "japanwest"
  allocation_method   = "Static"
        }
    }

    p-var-vm_nic = {
        vm_nic1 = {
          subnet_name = "subnet-lab-1"
          virtual_network_name = "vnet-lab"
          resource_group_name = "rg-lab"
          pip_name = "pip-lab-1"
          nic_name = "nic-lab-1"
          location = "japanwest"
          nic_config_name = "internal"
          vm_name = "vm-lab-1"
          computer_name = "subodh-vm"
          admin_username = "testadmin1"
          admin_password = "Password1234!"
        }

        vm_nic2 = {
          subnet_name = "subnet-lab-2"
          virtual_network_name = "vnet-lab"
          resource_group_name = "rg-lab"
          pip_name = "pip-lab-2"
          nic_name = "nic-lab-2"
          location = "japanwest"
          nic_config_name = "internal"
          vm_name = "vm-lab-2"
          computer_name = "subodhwa-vm"
          admin_username = "testadmin2"
          admin_password = "password12345"
        }
    }