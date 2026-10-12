output "secrets_lookup_id" {
  description = "Map of id values across all secrets_lookup, keyed the same as var.secrets_lookup except keys with no id are omitted"
  value       = { for k, v in data.snowflake_secrets.secrets_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "secrets_lookup_in" {
  description = "Map of in values across all secrets_lookup, keyed the same as var.secrets_lookup except keys with no in are omitted"
  value       = { for k, v in data.snowflake_secrets.secrets_lookup : k => one(v.in) if v.in != null && length(v.in) > 0 }
}
output "secrets_lookup_like" {
  description = "Map of like values across all secrets_lookup, keyed the same as var.secrets_lookup except keys with no like are omitted"
  value       = { for k, v in data.snowflake_secrets.secrets_lookup : k => v.like if v.like != null && length(v.like) > 0 }
}
output "secrets_lookup_secrets" {
  description = "Map of secrets values across all secrets_lookup, keyed the same as var.secrets_lookup except keys with no secrets are omitted"
  value       = { for k, v in data.snowflake_secrets.secrets_lookup : k => v.secrets if v.secrets != null && length(v.secrets) > 0 }
}
output "secrets_lookup_with_describe" {
  description = "Map of with_describe values across all secrets_lookup, keyed the same as var.secrets_lookup except keys with no with_describe are omitted"
  value       = { for k, v in data.snowflake_secrets.secrets_lookup : k => v.with_describe if v.with_describe != null }
}

