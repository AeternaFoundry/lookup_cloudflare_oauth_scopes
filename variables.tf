variable "oauth_scopes_lookup" {
  description = <<EOT
Map of oauth_scopes_lookup, attributes below
Optional:
    - max_items
EOT

  type = map(object({
    max_items = optional(number)
  }))
}

