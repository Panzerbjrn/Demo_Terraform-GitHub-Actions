#terraform {
#  backend "azurerm" {
#    resource_group_name  = "tfrg"
#    storage_account_name = "tfsa"
#    container_name       = "tfcont"
#    key                  = "terraformgithubexample.tfstate"
#  }
#}
#

provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x. #
  ## If you're using version 1.x, the "features" block is not allowed. ##
  version = "~>3.0"
  features {}
}

#Create Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "TerraformGHActionsDemo"
  location = "westeurope"
  tags = {
    source = "TerraformGHActions"
  }
}

