resource "random_string" "resource_group_name" {
  length  = 4
  numeric = false
  special = false
  upper   = false
}