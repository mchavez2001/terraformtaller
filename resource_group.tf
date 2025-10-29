# Create a resource group
resource "azurerm_resource_group" "rg_001" {
  name     = "rg-mchavez-dev-westeurope-001"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "rg_001" {
  name                = "vnet-mchavez-dev-westeurope-001"
  resource_group_name = azurerm_resource_group.rg_001.name
  location            = azurerm_resource_group.rg_001.location
  address_space       = ["10.0.0.0/16"]
}