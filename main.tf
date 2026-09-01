terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.2.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = ""
    storage_account_name = ""
    container_name       = ""
    key                  = ""

}

}
provider "azurerm" {
  features {}
}


resource "azurerm_resource_group" "example" {
  name     = "${var.prefix}-resources"
  location = "southeastasia"
}