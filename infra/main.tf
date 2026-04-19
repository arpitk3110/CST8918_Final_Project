module "backend" {
  source = "./modules/backend"

  resource_group_name  = "cst8918-final-project-group-7"
  location             = "eastus2"
  storage_account_name = "cst8918a03tfstate"
  container_name       = "tfstate"
}