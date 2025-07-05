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