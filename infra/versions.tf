terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.117"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.33"
    }
  }

  backend "azurerm" {
    resource_group_name  = "cst8918-final-project-group-7"
    storage_account_name = "cst8918a03tfstate"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}