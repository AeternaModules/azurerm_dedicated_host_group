output "dedicated_host_groups" {
  description = "All dedicated_host_group resources"
  value       = azurerm_dedicated_host_group.dedicated_host_groups
}
output "dedicated_host_groups_automatic_placement_enabled" {
  description = "List of automatic_placement_enabled values across all dedicated_host_groups"
  value       = [for k, v in azurerm_dedicated_host_group.dedicated_host_groups : v.automatic_placement_enabled]
}
output "dedicated_host_groups_location" {
  description = "List of location values across all dedicated_host_groups"
  value       = [for k, v in azurerm_dedicated_host_group.dedicated_host_groups : v.location]
}
output "dedicated_host_groups_name" {
  description = "List of name values across all dedicated_host_groups"
  value       = [for k, v in azurerm_dedicated_host_group.dedicated_host_groups : v.name]
}
output "dedicated_host_groups_platform_fault_domain_count" {
  description = "List of platform_fault_domain_count values across all dedicated_host_groups"
  value       = [for k, v in azurerm_dedicated_host_group.dedicated_host_groups : v.platform_fault_domain_count]
}
output "dedicated_host_groups_resource_group_name" {
  description = "List of resource_group_name values across all dedicated_host_groups"
  value       = [for k, v in azurerm_dedicated_host_group.dedicated_host_groups : v.resource_group_name]
}
output "dedicated_host_groups_tags" {
  description = "List of tags values across all dedicated_host_groups"
  value       = [for k, v in azurerm_dedicated_host_group.dedicated_host_groups : v.tags]
}
output "dedicated_host_groups_zone" {
  description = "List of zone values across all dedicated_host_groups"
  value       = [for k, v in azurerm_dedicated_host_group.dedicated_host_groups : v.zone]
}

