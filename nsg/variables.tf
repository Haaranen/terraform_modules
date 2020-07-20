variable "resource_group_name" {
    type = string
    description = "(Required) resource group name"
}

variable "virtual_network_name" {
    type = string
    description = "(Required) virtual network name"
}

variable "subnets" {
    description = "(Required) map structure of the rules to be created"
}

variable "location" {
    type = string
    description = "(Required) network security group location"
}