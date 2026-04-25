// This Terraform Configuration will specify the Azure provider and required version.
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
  skip_provider_registration = true
}

// Here we have to Reference Existing Resource Group. Replace <resource-group-name> with the name of your resource group which you can find in the top search bar, type Resource groups.
data "azurerm_resource_group" "rg" {
  name = "<resource-group-name>"
}

// Here we define a subnet and storage account resource and change your name.
resource "azurerm_storage_account" "storage" {
  name                     = "myStorageAccount"
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}
