data "azurerm_resource_group" "example1" {
  name     = var.rgnameqa
 
}

resource "azurerm_application_insights" "example1" {
  name                = var.insight2qa
  location            = data.azurerm_resource_group.example1.location
  resource_group_name = data.azurerm_resource_group.example1.name
  application_type    = "web"
}

output "instrumentation_key" {
  value = azurerm_application_insights.example1.instrumentation_key
}

output "app_id" {
  value = azurerm_application_insights.example1.app_id
}