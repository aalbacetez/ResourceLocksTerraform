
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

//Input variable experiment running duration
variable "SECONDS" {
    type        = string
    description = "Seconds"
}

//Random suffix for deployment
resource "random_string" "random_suffix" {
  length  = 8
  special = false
  upper   = false
}


