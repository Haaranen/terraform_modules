variable "resource_group_name" {
    type = string
    description = "(Required) resource group name"
}

variable "virtual_network_name" {
  description = "name of the parent virtual network"
}

variable "subnets" {
  description = "map structure for the subnets to be created"
}

variable "location" {
  description = "location of the resource"

}
