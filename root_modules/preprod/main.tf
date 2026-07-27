variable "p-var-rg"{}
variable "p-var-vnet"{}
variable "p-var-subnet"{}
variable "p-var-pip"{}
variable "p-var-vm_nic"{}



module "mod-block-rg" {
    source = "../../child_modules/rg"

    var-rg = var.p-var-rg
}

module "mod-block-vnet" {
    depends_on = [module.mod-block-rg]
    source = "../../child_modules/vnet"

    var-vnet = var.p-var-vnet
}

module "mod-block-subnet" {
    depends_on = [module.mod-block-vnet]
    source = "../../child_modules/subnet"

    var-subnet = var.p-var-subnet
}

module "mod-block-pip" {
    depends_on = [module.mod-block-rg]
    source = "../../child_modules/pip"

    var-pip = var.p-var-pip
}

module "mod-block-vm_nic" {
    depends_on = [module.mod-block-subnet, module.mod-block-pip]
    source = "../../child_modules/vm_nic"

    var-vm_nic = var.p-var-vm_nic

}