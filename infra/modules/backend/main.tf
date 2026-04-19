module "backend" {
  source = "./modules/backend"

  resource_group_name  = "cst8918-final-project-group-7"
  location             = "eastus2"
  storage_account_name = "cst8918a03tfstate"
  container_name       = "tfstate"
}


resource "azurerm_resource_group" "backend_rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "backend_sa" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.backend_rg.name
  location                 = azurerm_resource_group.backend_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  min_tls_version                 = "TLS1_2"
  allow_nested_items_to_be_public = false
}

resource "azurerm_storage_container" "backend_container" {
  name                  = var.container_name
  storage_account_id    = azurerm_storage_account.backend_sa.id
  container_access_type = "private"
}

