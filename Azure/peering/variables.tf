variable "resource_group_name" {
    type = string
    description = "(Required) Azure resource group name"
}

variable "name" {
    type = string
    description = "(Required) Azure virtual network peer name"
}

variable "virtual_network_name" {
    type = string
    description = "(Required) Azure virtual network name"
}

variable "remote_virtual_network_id" {
    type = string
    description = "(Required) Azure remote virtual network resource id"
}

variable "allow_virtual_network_access" {
    type = bool
    description = "(Optional) Controls if the resources in the remote virtual network can access resources in the local virtual network."
    default = true
}

variable "allow_forwarded_traffic" {
    type = bool
    description = "(Optional) Controls if forwarded traffic from resource in the remote virtual network is allowed."
    default = false
}

variable "allow_gateway_transit" {
    type = bool
    description = "(Optional) Controls gatewayLinks can be used in the remote virtual network’s link to the local virtual network."
    default = false
}

variable "use_remote_gateways" {
    type = bool
    description = "(Optional) Controls if remote gateways can be used on the local virtual network."
    default = false
}