resource "azurerm_spring_cloud_app" "location1" {
  name                = var.identifier
  resource_group_name = azurerm_resource_group.default.name
  service_name        = azurerm_spring_cloud_service.location1.name
  is_public           = true
  https_only          = true

  identity {
    type = "SystemAssigned"
  }
}