resource "azurerm_virtual_network" "dmz" {
  name                = "d-aca-dmz"
  resource_group_name = azurerm_resource_group.main.name
  location            = azurerm_resource_group.main.location
  address_space       = ["10.66.2.0/24"]
}

resource "azurerm_subnet" "aca_ext" {
  name                 = "aca-ext"
  resource_group_name  = azurerm_resource_group.main.name
  virtual_network_name = azurerm_virtual_network.dmz.name
  address_prefixes     = ["10.66.2.0/27"]

  delegation {
    name = "Microsoft.App.environments"

    service_delegation {
      name    = "Microsoft.App/environments"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
    }
  }
}
