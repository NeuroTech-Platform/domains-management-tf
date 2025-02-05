# Main Domain A, MX, and TXT Records
resource "exoscale_domain_record" "neurotech_app_a" {
  domain      = exoscale_domain.neurotech_app.id
  name        = ""
  record_type = "A"
  content     = "194.182.163.251"
  ttl         = 3600
}

resource "exoscale_domain_record" "neurotech_app_mx" {
  domain      = exoscale_domain.neurotech_app.id
  name        = ""
  record_type = "MX"
  prio        = 5
  content     = "parker.dmn.io."
  ttl         = 3600
}

resource "exoscale_domain_record" "neurotech_app_txt" {
  domain      = exoscale_domain.neurotech_app.id
  name        = ""
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
  ttl         = 3600
}

# Subdomain Records
resource "exoscale_domain_record" "neurotech_app_radar_a" {
  domain      = exoscale_domain.neurotech_app.id
  name        = "radar"
  record_type = "A"
  content     = "86.119.31.154"
  ttl         = 300
}

resource "exoscale_domain_record" "neurotech_app_radar_txt" {
  domain      = exoscale_domain.neurotech_app.id
  name        = "radar"
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
  ttl         = 300
}

resource "exoscale_domain_record" "neurotech_app_snow_staging_a" {
  domain      = exoscale_domain.neurotech_app.id
  name        = "snow-staging"
  record_type = "A"
  content     = "86.119.30.51"
  ttl         = 300
}

resource "exoscale_domain_record" "neurotech_app_snow_a" {
  domain      = exoscale_domain.neurotech_app.id
  name        = "snow"
  record_type = "A"
  content     = "86.119.31.68"
  ttl         = 300
}

resource "exoscale_domain_record" "neurotech_app_snow_txt" {
  domain      = exoscale_domain.neurotech_app.id
  name        = "snow"
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
  ttl         = 3600
}

# CNAME Records for services
resource "exoscale_domain_record" "neurotech_app_www_cname" {
  domain      = exoscale_domain.neurotech_app.id
  name        = "www"
  record_type = "CNAME"
  content     = "neurotech.app."
  ttl         = 300
}

resource "exoscale_domain_record" "neurotech_app_radar_cname" {
  domain      = exoscale_domain.neurotech_app.id
  name        = "*.radar"
  record_type = "CNAME"
  content     = "radar.neurotech.app"
  ttl         = 300
}

resource "exoscale_domain_record" "neurotech_app_snow_staging_cname" {
  domain      = exoscale_domain.neurotech_app.id
  name        = "*.snow-staging"
  record_type = "CNAME"
  content     = "snow-staging.neurotech.app"
  ttl         = 300
}

resource "exoscale_domain_record" "neurotech_app_snow_cname" {
  domain      = exoscale_domain.neurotech_app.id
  name        = "*.snow"
  record_type = "CNAME"
  content     = "snow.neurotech.app"
  ttl         = 300
}
