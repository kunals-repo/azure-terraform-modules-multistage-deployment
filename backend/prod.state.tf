

terraform {
    backend "azurerm" {

        resource_group_name = "backend-storage-acct"
        storage_account_name = "terraformstatefile2605"
        container_name = "backend-container"
        key = "prod.tfstate"
        
      
    }
}
