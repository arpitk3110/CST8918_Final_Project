variable "resource_group_name" {
  description = "Name of the resource group for Terraform backend resources."
  type        = string
}

variable "location" {
  description = "Azure region for Terraform backend resources."
  type        = string
}

variable "storage_account_name" {
  description = "Globally unique name of the storage account for Terraform state."
  type        = string
}

variable "container_name" {
  description = "Name of the blob container used for Terraform state."
  type        = string
}