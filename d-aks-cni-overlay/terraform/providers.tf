terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.16.0" # see https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_group
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3"
    }
    azapi = {
      source = "azure/azapi"
      version = "~>1"
    }
  }
}

provider "azurerm" {
  features {
    resource_group {
      prevent_deletion_if_contains_resources = false
    }
  }
}
