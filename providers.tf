terraform {
  required_providers {
    restapi = {
      source = "fmontezuma/restapi"
      version = "1.14.1"
    }
    azurerm = {
      source = "hashicorp/azurerm"
    }
    random = {
      source = "hashicorp/random"
      version = "3.2.0"
    }
  }
}



provider "random" {
  # Configuration options
}


provider "azurerm" {
  features {}
  skip_provider_registration = true
}
