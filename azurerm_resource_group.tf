resource "azurerm_resource_group" "default" {
  name     = format("spring-academy-%s", random_string.resource_group_name.result)
  location = var.location0
}