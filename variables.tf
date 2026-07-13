variable "dedicated_host_groups" {
  description = <<EOT
Map of dedicated_host_groups, attributes below
Required:
    - location
    - name
    - platform_fault_domain_count
    - resource_group_name
Optional:
    - automatic_placement_enabled
    - tags
    - zone
EOT

  type = map(object({
    location                    = string
    name                        = string
    platform_fault_domain_count = number
    resource_group_name         = string
    automatic_placement_enabled = optional(bool)
    tags                        = optional(map(string))
    zone                        = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.dedicated_host_groups : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_host_groups : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_host_groups : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_host_groups : (
        v.platform_fault_domain_count >= 1 && v.platform_fault_domain_count <= 3
      )
    ])
    error_message = "must be between 1 and 3"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_host_groups : (
        v.zone == null || (length(v.zone) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.dedicated_host_groups : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

