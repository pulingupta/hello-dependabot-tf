resource "azurerm_resource_group" "lt_connectivity_rg" {
  for_each = var.resource_groups

  name     = each.value.name
  location = each.value.location

  tags = var.tags
}