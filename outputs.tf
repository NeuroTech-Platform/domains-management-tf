output "hbp_link_name" {
  value = exoscale_domain.hbp_link.name
}

output "hbpmiplink_name" {
  value = exoscale_domain.hbpmip_link.name
}

output "thehipapp_name" {
  value = exoscale_domain.thehip_app.name
}

output "neurotechapp_name" {
  value = exoscale_domain.neurotech_app.name
}

# Example output for a specific record
output "hbp_link_host_record" {
  value = "${exoscale_domain_record.hbp_link_redmine.name}.${exoscale_domain.hbp_link.name}"
}
