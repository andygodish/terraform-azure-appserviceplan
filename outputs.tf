output "asp_id" {
  description = "The Id of the app service plan"
  value       = azurerm_service_plan.serviceplan.id
}
output "asp_kind" {
  description = "The kind of the app service plan created"
  value       = azurerm_service_plan.serviceplan.kind
}