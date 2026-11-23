terraform {
  required_version = ">= 1.7"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }
  # The state container comes with the landing zone; the pipeline fills in the rest.
  backend "azurerm" {}
}
