output "app_service_url" {
  description = "URL da aplicação web"
  value       = "https://${azurerm_app_service.app.default_site_hostname}"
}

output "resource_group_name" {
  description = "Grupo de recursos criado"
  value       = azurerm_resource_group.rg.name
}

output "app_service_name" {
  description = "Nome da aplicação web"
  value       = azurerm_app_service.app.name
}
