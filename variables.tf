variable "subnet" {
  type = list(any)

  default = ["spoke-1", "Hub-net"]
}

variable "address_prefixes" {
  type = list(any)

  default = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "azurerm_public_ip" {
  type = list(any)

  default = ["public-ip-1", "public-ip-2", "public-ip-3", "public-ip-4"]
}

/*
variable "network" {
  type = list(any)

  default = ["network-1", "network-2"]
}

*/

variable "vm" {
  type = list(any)

  default = ["linux-vm-1", "linix-vm-2", "linux-vm-3" ]
}

variable "vm-windows" {
  type = list(any)

  default = ["window-vm-1"]
}


variable "computer_name" {
  type = list(any)

  default = ["comp-vm-1", "comp-vm-2", "comp-vm-3"]
}

variable "azurerm_network_interface_linux" {
  type = list(any)

  default = ["nic-vm-1", "nic-vm-2" ]
}

variable "azurerm_network_interface_windows" {
  type = list(any)

  default = ["nic-vm-3", "nic-vm-4"]
}


variable "address_space_cidr" {
  
}

variable "address_prefixes_subnet-1" {
  
}

variable "address_prefixes_subnet-2" {
  
}