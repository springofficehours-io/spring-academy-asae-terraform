resource "azurerm_spring_cloud_build_deployment" "location1" {
  name                = var.identifier
  spring_cloud_app_id = azurerm_spring_cloud_app.location1.id
  build_result_id     = "<default>"
  instance_count      = 1
  environment_variables = {
    "MY_REGION" : var.location0
  }
  quota {
    cpu    = "2"
    memory = "4Gi"
  }
  timeouts {
    create = "20m"
    update = "20m"
    delete = "20m"
    read   = "4m"
  }
}