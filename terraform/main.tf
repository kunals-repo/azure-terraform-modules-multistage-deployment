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
  name = "storage-accts"
  location = "southindia" 
}
resource "azurerm_storage_account" "storage-rg" {
  name = var.acct-name
  location = azurerm_resource_group.rg-block.location
  resource_group_name = azurerm_resource_group.rg-block.name
  account_tier = "Standard"
  account_replication_type = var.replication-type
  
}