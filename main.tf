terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.2.0"
    }
  }

}
provider "azurerm" {
  features {}
}



resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-resources"
  location = "southeastasia"
}