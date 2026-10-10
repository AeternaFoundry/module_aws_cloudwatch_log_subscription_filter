output "cloudwatch_log_subscription_filters_id" {
  description = "Map of id values across all cloudwatch_log_subscription_filters, keyed the same as var.cloudwatch_log_subscription_filters"
  value       = { for k, v in aws_cloudwatch_log_subscription_filter.cloudwatch_log_subscription_filters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudwatch_log_subscription_filters_apply_on_transformed_logs" {
  description = "Map of apply_on_transformed_logs values across all cloudwatch_log_subscription_filters, keyed the same as var.cloudwatch_log_subscription_filters"
  value       = { for k, v in aws_cloudwatch_log_subscription_filter.cloudwatch_log_subscription_filters : k => v.apply_on_transformed_logs if v.apply_on_transformed_logs != null }
}
output "cloudwatch_log_subscription_filters_destination_arn" {
  description = "Map of destination_arn values across all cloudwatch_log_subscription_filters, keyed the same as var.cloudwatch_log_subscription_filters"
  value       = { for k, v in aws_cloudwatch_log_subscription_filter.cloudwatch_log_subscription_filters : k => v.destination_arn if v.destination_arn != null && length(v.destination_arn) > 0 }
}
output "cloudwatch_log_subscription_filters_distribution" {
  description = "Map of distribution values across all cloudwatch_log_subscription_filters, keyed the same as var.cloudwatch_log_subscription_filters"
  value       = { for k, v in aws_cloudwatch_log_subscription_filter.cloudwatch_log_subscription_filters : k => v.distribution if v.distribution != null && length(v.distribution) > 0 }
}
output "cloudwatch_log_subscription_filters_emit_system_fields" {
  description = "Map of emit_system_fields values across all cloudwatch_log_subscription_filters, keyed the same as var.cloudwatch_log_subscription_filters"
  value       = { for k, v in aws_cloudwatch_log_subscription_filter.cloudwatch_log_subscription_filters : k => v.emit_system_fields if v.emit_system_fields != null && length(v.emit_system_fields) > 0 }
}
output "cloudwatch_log_subscription_filters_filter_pattern" {
  description = "Map of filter_pattern values across all cloudwatch_log_subscription_filters, keyed the same as var.cloudwatch_log_subscription_filters"
  value       = { for k, v in aws_cloudwatch_log_subscription_filter.cloudwatch_log_subscription_filters : k => v.filter_pattern if v.filter_pattern != null && length(v.filter_pattern) > 0 }
}
output "cloudwatch_log_subscription_filters_log_group_name" {
  description = "Map of log_group_name values across all cloudwatch_log_subscription_filters, keyed the same as var.cloudwatch_log_subscription_filters"
  value       = { for k, v in aws_cloudwatch_log_subscription_filter.cloudwatch_log_subscription_filters : k => v.log_group_name if v.log_group_name != null && length(v.log_group_name) > 0 }
}
output "cloudwatch_log_subscription_filters_name" {
  description = "Map of name values across all cloudwatch_log_subscription_filters, keyed the same as var.cloudwatch_log_subscription_filters"
  value       = { for k, v in aws_cloudwatch_log_subscription_filter.cloudwatch_log_subscription_filters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudwatch_log_subscription_filters_region" {
  description = "Map of region values across all cloudwatch_log_subscription_filters, keyed the same as var.cloudwatch_log_subscription_filters"
  value       = { for k, v in aws_cloudwatch_log_subscription_filter.cloudwatch_log_subscription_filters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudwatch_log_subscription_filters_role_arn" {
  description = "Map of role_arn values across all cloudwatch_log_subscription_filters, keyed the same as var.cloudwatch_log_subscription_filters"
  value       = { for k, v in aws_cloudwatch_log_subscription_filter.cloudwatch_log_subscription_filters : k => v.role_arn if v.role_arn != null && length(v.role_arn) > 0 }
}

