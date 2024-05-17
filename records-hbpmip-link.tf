# Main Domain Records
resource "exoscale_domain_record" "hbpmip_link_a" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = ""
  record_type = "A"
  content     = "148.187.148.239"
  ttl         = 3600
}

resource "exoscale_domain_record" "hbpmip_link_mx" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = ""
  record_type = "MX"
  prio        = 10
  content     = "mail1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "hbpmip_link_txt" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = ""
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
  ttl         = 3600
}

# Subdomain A Records
resource "exoscale_domain_record" "redmine_a" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "redmine"
  record_type = "A"
  content     = "148.187.148.239"
  ttl         = 3600
}

resource "exoscale_domain_record" "datacatalogue_a" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "datacatalogue"
  record_type = "A"
  content     = "148.187.148.123"
  ttl         = 3600
}

resource "exoscale_domain_record" "mail1_a" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "mail1"
  record_type = "A"
  content     = "148.187.148.239"
  ttl         = 3600
}

resource "exoscale_domain_record" "mipns1_a" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "mipns1"
  record_type = "A"
  content     = "185.82.101.171"
  ttl         = 3600
}

resource "exoscale_domain_record" "mipns2_a" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "mipns2"
  record_type = "A"
  content     = "185.82.100.201"
  ttl         = 3600
}

resource "exoscale_domain_record" "mipintns1_a" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "mipintns1"
  record_type = "A"
  content     = "148.187.148.239"
  ttl         = 3600
}

resource "exoscale_domain_record" "uoa_a" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "uoa"
  record_type = "A"
  content     = "148.187.148.211"
  ttl         = 3600
}

resource "exoscale_domain_record" "www_a" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "www"
  record_type = "A"
  content     = "148.187.148.239"
  ttl         = 3600
}

# MX and TXT Records for Subdomains
resource "exoscale_domain_record" "redmine_mx" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "redmine"
  record_type = "MX"
  prio        = 10
  content     = "mail1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "redmine_txt" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "redmine"
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
  ttl         = 3600
}

resource "exoscale_domain_record" "www_mx" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "www"
  record_type = "MX"
  prio        = 10
  content     = "mail1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "www_txt" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "www"
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
  ttl         = 3600
}

# CNAME Records for Subdomains and Wildcards
resource "exoscale_domain_record" "ns1_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "ns1"
  record_type = "CNAME"
  content     = "mipns1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "ns2_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "ns2"
  record_type = "CNAME"
  content     = "mipns2.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "dementia_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "dementia"
  record_type = "CNAME"
  content     = "mipintns1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "epilepsy_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "epilepsy"
  record_type = "CNAME"
  content     = "mipintns1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "handson_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "handson"
  record_type = "CNAME"
  content     = "mipintns1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "local_wildcard_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "*.local"
  record_type = "CNAME"
  content     = "mipintns1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "mail_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "mail"
  record_type = "CNAME"
  content     = "mail1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "mentalhealth_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "mentalhealth"
  record_type = "CNAME"
  content     = "mipintns1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "qa_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "qa"
  record_type = "CNAME"
  content     = "mipintns1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "qa2_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "qa2"
  record_type = "CNAME"
  content     = "hbpmipqaui1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "repomse_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "repomse"
  record_type = "CNAME"
  content     = "mipintns1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "stroke_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "stroke"
  record_type = "CNAME"
  content     = "mipintns1.hbpmip.link."
  ttl         = 3600
}

resource "exoscale_domain_record" "tbi_cname" {
  domain      = exoscale_domain.hbpmip_link.id
  name        = "tbi"
  record_type = "CNAME"
  content     = "mipintns1.hbpmip.link."
  ttl         = 3600
}
