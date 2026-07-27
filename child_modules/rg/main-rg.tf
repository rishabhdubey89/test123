variable "var-rg" {}

resource "azurerm_resource_group" "block-rg" {
    for_each = var.var-rg
    name = each.value.rg_name
    location = each.value.location
}