output "oauth_scopes_lookup_max_items" {
  description = "Map of max_items values across all oauth_scopes_lookup, keyed the same as var.oauth_scopes_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_oauth_scopes.oauth_scopes_lookup : k => v.max_items if v.max_items != null }
}
output "oauth_scopes_lookup_result" {
  description = "Map of result values across all oauth_scopes_lookup, keyed the same as var.oauth_scopes_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_oauth_scopes.oauth_scopes_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}

