resource "azurerm_resource_group" "example2" {
  name     = var.rgnameqa
  location = var.locationqa
  
}

resource "azurerm_log_analytics_workspace" "example2" {
  name                = var.workspacenameqa
  location            = azurerm_resource_group.example1.location
  resource_group_name = azurerm_resource_group.example1.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_application_insights" "example2" {
  name                = var.insightnameqa
  location            = azurerm_resource_group.example1.location
  resource_group_name = azurerm_resource_group.example1.name
  workspace_id        = azurerm_log_analytics_workspace.example1.id
  application_type    = "web"
}

resource "azurerm_application_insights" "example2" {
  name                = var.insight2qa
  location            = azurerm_resource_group.example1.location
  resource_group_name = azurerm_resource_group.example1.name
  application_type    = "web"
}
