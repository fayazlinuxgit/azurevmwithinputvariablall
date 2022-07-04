provider "azurerm" {

  features {}
}

########## Resource Group Creation ###################


resource "azurerm_resource_group" "fayaz-rsg-test" {
  name     = "fayaz-rsg-test"
  location = "West Europe"
}


########### Resource Group END #####################


############# Virtual Network Creation ###########

resource "azurerm_virtual_network" "fayaz-virtual_network_name" {
  name                = "virtualNetwork1"
  resource_group_name = azurerm_resource_group.fayaz-rsg-test.name
  location            = azurerm_resource_group.fayaz-rsg-test.location
  address_space       = var.address_space_cidr


}

############# Virtual Network Creation END  ###########



#############  Subnet-Creation ####################

resource "azurerm_subnet" "subnet-Linux-fayaz" {
  #count                = 2
  #name                 = var.subnet[count.index]
  #address_prefixes     = [var.address_prefixes[count.index]]
  name = "Hub-Subnet"
  address_prefixes = var.address_prefixes_subnet-1
  resource_group_name  = azurerm_resource_group.fayaz-rsg-test.name
  virtual_network_name = azurerm_virtual_network.fayaz-virtual_network_name.name

}

resource "azurerm_subnet" "subnet-windows-fayaz" {
  #count                = 2
  #name                 = var.subnet[count.index]
  #address_prefixes     = [var.address_prefixes[count.index]]
  name = "Spoke-Subnet"
  address_prefixes = var.address_prefixes_subnet-2
  resource_group_name  = azurerm_resource_group.fayaz-rsg-test.name
  virtual_network_name = azurerm_virtual_network.fayaz-virtual_network_name.name

}


