resource "azurerm_spring_cloud_build_pack_binding" "default" {
  name                    = "default"
  spring_cloud_builder_id = azurerm_spring_cloud_builder.location1.id
  binding_type            = "ApplicationInsights"
  launch {
    properties = {
      sampling-rate = "100.0"
    }
  }
}