output "resource_group_name" {
  description = "Backend resource group name."
  value       = azurerm_resource_group.backend_rg.name
}

output "storage_account_name" {
  description = "Backend storage account name."
  value       = azurerm_storage_account.backend_sa.name
}

output "container_name" {
  description = "Backend storage container name."
  value       = azurerm_storage_container.backend_container.name
}