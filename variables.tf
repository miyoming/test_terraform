/* variable "admin_password" {
  description = "The password for the admin user"
  type        = stringzdad
} */

variable "nsg_name" {
  description = "The name of the network security group"
  type        = string
  
}

variable "prefix" {
  description = "The prefix for resource names"
  type        = string
}

variable "nsg_rules" {
  description = "A list of network security group rules"
  type = list(object({
    name      = string
    priority  = number
    direction = string
    access    = string
    protocol  = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}


