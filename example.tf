terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 2.26"
    }
  }
}

provider "azurerm" {
  features {}
}

terraform {
  backend "remote" {
    organization = "sanheli"
    workspaces {
      name = "learn-terraform-azure-instance"
    }
  }
}

resource "azurerm_resource_group" "rg" {
  name     = "myTFResourceGroup"
  location = "westus2"
}
