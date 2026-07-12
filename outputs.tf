output "dedicated_host_groups_id" {
  description = "Map of id values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = { for k, v in azurerm_dedicated_host_group.dedicated_host_groups : k => v.id }
}
output "dedicated_host_groups_automatic_placement_enabled" {
  description = "Map of automatic_placement_enabled values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = { for k, v in azurerm_dedicated_host_group.dedicated_host_groups : k => v.automatic_placement_enabled }
}
output "dedicated_host_groups_location" {
  description = "Map of location values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = { for k, v in azurerm_dedicated_host_group.dedicated_host_groups : k => v.location }
}
output "dedicated_host_groups_name" {
  description = "Map of name values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = { for k, v in azurerm_dedicated_host_group.dedicated_host_groups : k => v.name }
}
output "dedicated_host_groups_platform_fault_domain_count" {
  description = "Map of platform_fault_domain_count values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = { for k, v in azurerm_dedicated_host_group.dedicated_host_groups : k => v.platform_fault_domain_count }
}
output "dedicated_host_groups_resource_group_name" {
  description = "Map of resource_group_name values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = { for k, v in azurerm_dedicated_host_group.dedicated_host_groups : k => v.resource_group_name }
}
output "dedicated_host_groups_tags" {
  description = "Map of tags values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = { for k, v in azurerm_dedicated_host_group.dedicated_host_groups : k => v.tags }
}
output "dedicated_host_groups_zone" {
  description = "Map of zone values across all dedicated_host_groups, keyed the same as var.dedicated_host_groups"
  value       = { for k, v in azurerm_dedicated_host_group.dedicated_host_groups : k => v.zone }
}

