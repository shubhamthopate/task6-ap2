resource "azurerm_resource_group" "example1" {
  name     = var.rgnameqa
  location = var.locationqa
  
}

resource "azurerm_log_analytics_workspace" "example1" {
  name                = var.workspacenameqa
  location            = azurerm_resource_group.example1.location
  resource_group_name = azurerm_resource_group.example1.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_application_insights" "example1" {
  name                = var.insightnameqa
  location            = azurerm_resource_group.example1.location
  resource_group_name = azurerm_resource_group.example1.name
  workspace_id        = azurerm_log_analytics_workspace.example1.id
  application_type    = "web"
}

output "instrumentation_key" {
  value = azurerm_application_insights.example1.instrumentation_key
}

output "app_id" {
  value = azurerm_application_insights.example1.app_id
}