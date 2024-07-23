provider "azurerm" {
  features {}
}

module "resource_group" {
  source      = "git::https://github.com/yadavprakash/terraform-azure-labels.git?ref=v1.0.0"
  name        = "app"
  environment = "test"
  location    = "North Europe"
}

##    Storage Account

module "storage" {
  source                        = "git::https://github.com/yadavprakash/terraform-azure-storage.git?ref=v1.0.0"
  name                          = "app"
  environment                   = "test"
  default_enabled               = true
  resource_group_name           = module.resource_group.resource_group_name
  location                      = "North Europe"
  storage_account_name          = "tes3dfjg"
  public_network_access_enabled = true
  ##   Storage Container
  containers_list = [
    { name = "app-test", access_type = "private" },
    { name = "app2", access_type = "private" },
  ]
  ##   Storage File Share
  file_shares = [
    { name = "fileshare1", quota = 5 },
  ]
  ##   Storage Tables
  tables = ["table1"]
  ## Storage Queues
  queues                  = ["queue1"]
  enable_private_endpoint = false
}

module "defender" {
  source      = "../"
  resource_id = module.storage.default_storage_account_id
}
