resource "azurerm_resource_group" "example" {
  name     = var.rgnamedev
  location = var.locationdev
 
}

resource "azurerm_log_analytics_workspace" "example" {
  name                = var.workspacenamedev
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_application_insights" "example" {
  name                = var.insightnamedev
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = azurerm_log_analytics_workspace.example.id
  application_type    = "web"
}

resource "azurerm_application_insights" "example1" {
  name                = var.insight2dev
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  application_type    = "web"
}



