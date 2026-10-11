variable "kibana_synthetics_private_locations" {
  description = <<EOT
Map of kibana_synthetics_private_locations, attributes below
Required:
    - agent_policy_id
    - label
Optional:
    - geo
    - space_id
    - tags
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    agent_policy_id = string
    label           = string
    geo = optional(object({
      lat = number
      lon = number
    }))
    space_id = optional(string)
    tags     = optional(list(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

