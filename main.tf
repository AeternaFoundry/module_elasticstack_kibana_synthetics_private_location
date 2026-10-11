resource "elasticstack_kibana_synthetics_private_location" "kibana_synthetics_private_locations" {
  for_each = var.kibana_synthetics_private_locations

  agent_policy_id = each.value.agent_policy_id
  label           = each.value.label
  geo             = each.value.geo
  space_id        = each.value.space_id
  tags            = each.value.tags
  timeouts        = each.value.timeouts

  dynamic "kibana_connection" {
    for_each = each.value.kibana_connection != null ? each.value.kibana_connection : []
    content {
      api_key      = kibana_connection.value.api_key
      bearer_token = kibana_connection.value.bearer_token
      ca_certs     = kibana_connection.value.ca_certs
      endpoints    = kibana_connection.value.endpoints
      insecure     = kibana_connection.value.insecure
      password     = kibana_connection.value.password
      username     = kibana_connection.value.username
    }
  }
}

