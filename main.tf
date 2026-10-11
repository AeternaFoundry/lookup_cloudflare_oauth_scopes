data "cloudflare_oauth_scopes" "oauth_scopes_lookup" {
  for_each = var.oauth_scopes_lookup

  max_items = each.value.max_items
}

