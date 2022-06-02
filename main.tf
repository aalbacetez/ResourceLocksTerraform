
terraform {

}

variable "location" {
  default     = "West Europe"
  type        = string
  description = "The Azure location where all resources in this example should be created"
}



data "azurerm_client_config" "current" {}
data "azurerm_subscription" "current" {}




locals {

}

data "azurerm_virtual_network" "vnet" {
  name                = "vnet"
  resource_group_name = "ctos7weursgResourceLocksTF001"
}

resource "azurerm_management_lock" "lock-vnet" {
  name       = "automaticlock "
  scope      = azurerm_virtual_network.vnet.id
  lock_level = "ReadOnly"
  notes      = "Lock managed by Terraform"
}


