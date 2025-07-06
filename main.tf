variable "rg-name" {
    type = string
    default = "kaddu"
}

variable "rg-location" {
}

resource "azurerm_resource_group" "rg1" {
  count    = 3
  name     = "${var.rg-name}${count.index}"
  location = var.rg-location
}

resource "azurerm_storage_account" "sa1" {
  count = 3
  name = "${var.rg-name}${count.index}sa"
  resource_group_name = azurerm_resource_group.rg1[count.index].name
  location = azurerm_resource_group.rg1[count.index].location
  account_tier = "Standard"
  account_replication_type = "LRS"
}