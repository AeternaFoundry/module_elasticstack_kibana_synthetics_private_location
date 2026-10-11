output "kibana_synthetics_private_locations_id" {
  description = "Map of id values across all kibana_synthetics_private_locations, keyed the same as var.kibana_synthetics_private_locations except keys with no id are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_private_location.kibana_synthetics_private_locations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "kibana_synthetics_private_locations_agent_policy_id" {
  description = "Map of agent_policy_id values across all kibana_synthetics_private_locations, keyed the same as var.kibana_synthetics_private_locations except keys with no agent_policy_id are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_private_location.kibana_synthetics_private_locations : k => v.agent_policy_id if v.agent_policy_id != null && length(v.agent_policy_id) > 0 }
}
output "kibana_synthetics_private_locations_geo" {
  description = "Map of geo values across all kibana_synthetics_private_locations, keyed the same as var.kibana_synthetics_private_locations except keys with no geo are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_private_location.kibana_synthetics_private_locations : k => v.geo if v.geo != null && length(v.geo) > 0 }
}
output "kibana_synthetics_private_locations_kibana_connection" {
  description = "Map of kibana_connection values across all kibana_synthetics_private_locations, keyed the same as var.kibana_synthetics_private_locations except keys with no kibana_connection are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_private_location.kibana_synthetics_private_locations : k => v.kibana_connection if v.kibana_connection != null && length(v.kibana_connection) > 0 }
  sensitive   = true
}
output "kibana_synthetics_private_locations_label" {
  description = "Map of label values across all kibana_synthetics_private_locations, keyed the same as var.kibana_synthetics_private_locations except keys with no label are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_private_location.kibana_synthetics_private_locations : k => v.label if v.label != null && length(v.label) > 0 }
}
output "kibana_synthetics_private_locations_space_id" {
  description = "Map of space_id values across all kibana_synthetics_private_locations, keyed the same as var.kibana_synthetics_private_locations except keys with no space_id are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_private_location.kibana_synthetics_private_locations : k => v.space_id if v.space_id != null && length(v.space_id) > 0 }
}
output "kibana_synthetics_private_locations_tags" {
  description = "Map of tags values across all kibana_synthetics_private_locations, keyed the same as var.kibana_synthetics_private_locations except keys with no tags are omitted"
  value       = { for k, v in elasticstack_kibana_synthetics_private_location.kibana_synthetics_private_locations : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

