terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.111.0"
    }
  }

}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "block1" {
  name     = "rgprod"
  location = "centralindia"

}

resource "azurerm_storage_account" "block2" {
  name                     = "pepsi8023sg"
  resource_group_name      = "rgprod"
  location                 = "centralindia"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on               = [azurerm_resource_group.block1]


}

resource "azurerm_storage_container" "block3" {
  name                 = "prodcont1"
  storage_account_name = "pepsi8023sg"
  depends_on           = [azurerm_storage_account.block2]

}
terraform {
  backend "azurerm" {
    resource_group_name  = "rgprod"
    storage_account_name = "pepsi8023sg"
    container_name       = "prodcont1"
    key                  = "terraform.tfstate"


  }
}

resource "azurerm_resource_group" "block11" {
  location = "centralindia"
  name     = "rgprod1"
  

}

resource "azurerm_storage_account" "block21" {
  
  resource_group_name      = "rgprod"
  location                 = "West Europe"
  account_tier             = "Standard"
  account_replication_type = "LRS"
  depends_on               = [azurerm_resource_group.block11]
  name                     = "pepsi8023sg1"


}