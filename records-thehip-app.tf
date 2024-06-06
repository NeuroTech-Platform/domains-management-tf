# Main Domain Records
resource "exoscale_domain_record" "thehip_app_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = ""
  record_type = "A"
  content     = "194.182.160.230"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_mx" {
  domain      = exoscale_domain.thehip_app.id
  name        = ""
  record_type = "MX"
  prio        = 5
  content     = "parker.dmn.io."
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_txt" {
  domain      = exoscale_domain.thehip_app.id
  name        = ""
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
  ttl         = 3600
}

# Subdomain A Records
resource "exoscale_domain_record" "thehip_app_backend_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "backend"
  record_type = "A"
  content     = "194.182.162.177"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_collab_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "collab"
  record_type = "A"
  content     = "89.145.167.46"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_cpu1_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "cpu1"
  record_type = "A"
  content     = "148.187.149.219"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_gpu1_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "gpu1"
  record_type = "A"
  content     = "148.187.148.142"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_cpu2_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "cpu2"
  record_type = "A"
  content     = "148.187.148.174"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_id_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "id"
  record_type = "A"
  content     = "159.100.243.116"
  ttl         = 3600
}

# More Complex Subdomains and Services
resource "exoscale_domain_record" "thehip_app_dip_dev_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "dip-dev"
  record_type = "A"
  content     = "148.187.151.214"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_dip_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "dip"
  record_type = "A"
  content     = "148.187.150.176"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_collab_qa_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "collab-qa"
  record_type = "A"
  content     = "148.187.151.222"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_qa_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "qa"
  record_type = "A"
  content     = "148.187.148.93"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_qa_txt" {
  domain      = exoscale_domain.thehip_app.id
  name        = "qa"
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
  ttl         = 3600
}

# Development and Testing Subdomains
resource "exoscale_domain_record" "thehip_app_collab_dev_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "collab-dev"
  record_type = "A"
  content     = "148.187.148.252"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_collab_dev_txt" {
  domain      = exoscale_domain.thehip_app.id
  name        = "collab-dev"
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_hub_dev_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "hub-dev"
  record_type = "A"
  content     = "148.187.148.119"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_dev_id_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "dev.id"
  record_type = "A"
  content     = "148.187.150.44"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_dev_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "dev"
  record_type = "A"
  content     = "148.187.149.10"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_dev_txt" {
  domain      = exoscale_domain.thehip_app.id
  name        = "dev"
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_ocis_dev_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "ocis"
  record_type = "A"
  content     = "148.187.151.212"
  ttl         = 3600
}

# CNAME Records for Dynamic Services and Wildcard Subdomains
resource "exoscale_domain_record" "thehip_app_www_cname" {
  domain      = exoscale_domain.thehip_app.id
  name        = "www"
  record_type = "CNAME"
  content     = "thehip.app."
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_dip_dev_cname" {
  domain      = exoscale_domain.thehip_app.id
  name        = "*.dip-dev"
  record_type = "CNAME"
  content     = "dip-dev.thehip.app"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_gpu1_wildcard_cname" {
  domain      = exoscale_domain.thehip_app.id
  name        = "*.gpu1"
  record_type = "CNAME"
  content     = "gpu1.thehip.app"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_github_challenge_txt" {
  domain      = exoscale_domain.thehip_app.id
  name        = "_github-pages-challenge-hip-infrastructure.docs"
  record_type = "TXT"
  content     = "fad6713f14a35a7db31f507c085486"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_headscale_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "headscale"
  record_type = "A"
  content     = "185.19.29.138"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_addc_xip_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "addc-xip"
  record_type = "A"
  content     = "185.19.30.235"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_addc_cname" {
  domain      = exoscale_domain.thehip_app.id
  name        = "addc"
  record_type = "CNAME"
  content     = "addc-xip.thehip.app"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_elk_dev_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "elk-dev"
  record_type = "A"
  content     = "148.187.150.153"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_elk_qa_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "elk-qa"
  record_type = "A"
  content     = "148.187.149.107"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_elk_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "elk"
  record_type = "A"
  content     = "89.145.167.210"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_es_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "es"
  record_type = "A"
  content     = "148.187.149.107"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_kibana_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "kibana"
  record_type = "A"
  content     = "148.187.149.107"
  ttl         = 3600
}

resource "exoscale_domain_record" "thehip_app_micromed_db_a" {
  domain      = exoscale_domain.thehip_app.id
  name        = "micromed-db"
  record_type = "A"
  content     = "148.187.148.153"
  ttl         = 3600
}
