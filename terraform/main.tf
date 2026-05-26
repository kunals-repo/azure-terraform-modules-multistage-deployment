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

# Defining the backend state file for dev , test , prod env :

terraform {
    backend "azurerm" {

        resource_group_name = "backend-storage-acct"
        storage_account_name = "terraformstatefile2605"
        container_name = "tfstate"
        key = "dev.tfstate"
      
    }
}

terraform {
    backend "azurerm" {

        resource_group_name = "backend-storage-acct"
        storage_account_name = "terraformstatefile2605"
        container_name = "tfstate"
        key = "test.tfstate"
      
    }
    
}

terraform {
    backend "azurerm" {

        resource_group_name = "backend-storage-acct"
        storage_account_name = "terraformstatefile2605"
        container_name = "tfstate"
        key = "prod.tfstate"
      
    }
    
}

resource "azurerm_resource_group" "rg-block" {
  name = "storage-rg"
  location = "southindia" 
}
resource "azurerm_storage_account" "storage-rg" {
  name = var.acct-name
  location = azurerm_resource_group.rg-block.location
  resource_group_name = azurerm_resource_group.rg-block.name
  account_tier = "Standard"
  account_replication_type = var.replication-type
  
}