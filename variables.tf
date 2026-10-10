variable "cloudwatch_log_subscription_filters" {
  description = <<EOT
Map of cloudwatch_log_subscription_filters, attributes below
Required:
    - destination_arn
    - filter_pattern
    - log_group_name
    - name
Optional:
    - apply_on_transformed_logs
    - distribution
    - emit_system_fields
    - region
    - role_arn
EOT

  type = map(object({
    destination_arn           = string
    filter_pattern            = string
    log_group_name            = string
    name                      = string
    apply_on_transformed_logs = optional(bool)
    distribution              = optional(string)
    emit_system_fields        = optional(set(string))
    region                    = optional(string)
    role_arn                  = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_log_subscription_filters : (
        v.emit_system_fields == null || (alltrue([for x in v.emit_system_fields : contains(["@aws.account", "@aws.region", "@source.log"], x)]))
      )
    ])
    error_message = "must be one of: @aws.account, @aws.region, @source.log"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudwatch_log_subscription_filters : (
        length(v.filter_pattern) >= 0 && length(v.filter_pattern) <= 1024
      )
    ])
    error_message = "must be between 0 and 1024 characters"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

