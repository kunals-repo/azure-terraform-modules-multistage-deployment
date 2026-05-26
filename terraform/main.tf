# terraform providers define ::

terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~>4.61.0"
    } 
  }
  
  required_version = ">=1.14.5"

  backend "local" {}

}



provider "azurerm" {
   features {

   }
  # Configuration options
}


# resource "azurerm_resource_group" "rg-block" {
#   name = "storage-rg-${var.acct-name}"
#   location = "southindia" 
# }
# resource "azurerm_storage_account" "storage-rg" {
#   name = var.acct-name
#   location = azurerm_resource_group.rg-block.location
#   resource_group_name = azurerm_resource_group.rg-block.name
#   account_tier = "Standard"
#   account_replication_type = var.replication-type
# }

module "vnet-block" {
  source = "../vnet-modules"
  nsg-name = var.nsg-name
  vnet-name = var.vnet-name
  vnet-ip = var.vnet-ip
  subnet-name = var.subnet-name
  subnet-ip = var.subnet-ip
  environment-name = var.environment-name
  
}