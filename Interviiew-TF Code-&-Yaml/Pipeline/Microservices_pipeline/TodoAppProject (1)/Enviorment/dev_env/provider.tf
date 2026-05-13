terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.13.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "dev-k8s-rg"
    storage_account_name = "appstgram"
    container_name       = "devappcon"
    key                  = "dev_terraform.tfstae"

  }
}
provider "azurerm" {
  subscription_id = "9188fd7a-e704-4b34-87b9-4fb447e78f01"
  features {

  }

}

