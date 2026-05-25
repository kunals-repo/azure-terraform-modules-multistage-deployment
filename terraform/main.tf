# terraform providers define ::

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>4.61.0"
    } 
  }
  
  required_version = ">=1.14.5"
}

provider "azurerm" {
   features {

   }
  # Configuration options
}


resource "azurerm_resource_group" "rg-block" {
  name = "rg-${var.name-env}"
  location = var.location
  
}