terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0" # Or your preferred version
    }
  }

  # Left empty intentionally to accept the backend.config file
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
  use_oidc = true # Forces the provider to use OIDC authentication
}

# Example object you want to create
resource "azurerm_resource_group" "example" {
  name     = "rg-production-resources"
  location = "East US"
}
