provider "azurerm" {
  subscription_id="8cdeb39d-e6e8-4378-acb5-959015d34593"
  client_id="ac72b001-f800-4c08-aaae-81fb0e189045"
  client_secret="dFsN3li-2Tjrdh_1Q90N5BW7ve5bQY~j0c"
  tenant_id="c1f5e6ef-65ff-4f84-96cf-b1134951ecea"

  features {}
}

terraform {
    backend "azurerm" {
        resource_group_name ="tfrgtrainer"
        storage_account_name = "satrainer"
        container_name = "con1"
        key = "terraform.tfstate"
    }
}

resource "azurerm_resource_group" "demo1" {
  name     = "testrg1trainer1"
  location = "eastus"
  tags = {
      env = "resource-group-demo"
  }

}

resource "azurerm_resource_group" "demo2" {
 name     = "testrg2trainer2"
  location = "southindia"
}