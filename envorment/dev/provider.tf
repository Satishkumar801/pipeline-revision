terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.79.0"
    }
  }
  #   backend "azurerm" {
  #     resource_group_name = "value"
  #     storage_account_name = "value"
  #     container_name = "value"
  #     key = "value"
  #   }
}

provider "azurerm" {
  features {}
  subscription_id = "7454c207-6484-4225-8771-680428895c08"
  # Configuration options
}