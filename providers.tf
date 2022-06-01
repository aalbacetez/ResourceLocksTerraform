terraform {
  required_providers {
    
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
