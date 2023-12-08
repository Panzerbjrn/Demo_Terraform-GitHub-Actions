#Create Resource Group
resource "azurerm_resource_group" "rg" {
  name     = "Demo_Terraform-GitHub-Actions"
  location = "westeurope"
  tags = {
    source = "Demo_Terraform-GitHub-Actions"
  }
}

