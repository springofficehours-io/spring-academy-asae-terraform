output "resource_group_name" {
  value     = azurerm_resource_group.default.name
  sensitive = false
}

output "logs" {
  value = "az spring app logs -n ${var.identifier} -s ${azurerm_spring_cloud_service.location1.name} -g ${azurerm_resource_group.default.name} --lines 1000"
}

output "list_apps" {
  value = "az spring app list --output table -g ${azurerm_resource_group.default.name} -s ${azurerm_spring_cloud_service.location1.name}"
}

output "build_deploy" {
  value = "az spring app deploy -g ${azurerm_resource_group.default.name} -s ${azurerm_spring_cloud_service.location1.name} -n ${azurerm_spring_cloud_app.location1.name} --build-env BP_JVM_VERSION=17 --source-path"
}