
resource "azurerm_resource_group" "rg-block" {
  name = "rg-${var.vnet-name}"
  location = "southindia" 
}

resource "azurerm_network_security_group" "nsg-block" {
  name                = var.nsg-name
  location            = azurerm_resource_group.rg-block.location
  resource_group_name = azurerm_resource_group.rg-block.name
}

resource "azurerm_virtual_network" "vnet-block" {
  name                = var.vnet-name
  location            = azurerm_resource_group.rg-block.location
  resource_group_name = azurerm_resource_group.rg-block.name
  address_space       = [var.vnet-ip]


  subnet {
    name             = var.subnet-name
    address_prefixes = [var.subnet-ip]
  }

  tags = {

    environment = var.environment-name
  }
}