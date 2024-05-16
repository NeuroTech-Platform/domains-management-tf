# A Records
resource "exoscale_domain_record" "redmine" {
  domain      = exoscale_domain.hbp_link.id
  name        = "redmine"
  record_type = "A"
  content     = "148.187.148.239"
}

resource "exoscale_domain_record" "rm" {
  domain      = exoscale_domain.hbp_link.id
  name        = "rm"
  record_type = "A"
  content     = "148.187.148.239"
}

resource "exoscale_domain_record" "vpn1" {
  domain      = exoscale_domain.hbp_link.id
  name        = "vpn1"
  record_type = "A"
  content     = "148.187.148.95"
}

resource "exoscale_domain_record" "mipintns1" {
  domain      = exoscale_domain.hbp_link.id
  name        = "mipintns1"
  record_type = "A"
  content     = "148.187.148.239"
}

resource "exoscale_domain_record" "mail1" {
  domain      = exoscale_domain.hbp_link.id
  name        = "mail1"
  record_type = "A"
  content     = "148.187.148.239"
}

resource "exoscale_domain_record" "hipintns1" {
  domain      = exoscale_domain.hbp_link.id
  name        = "hipintns1"
  record_type = "A"
  content     = "148.187.149.194"
}

resource "exoscale_domain_record" "gitlab" {
  domain      = exoscale_domain.hbp_link.id
  name        = "gitlab"
  record_type = "A"
  content     = "148.187.148.189"
}

resource "exoscale_domain_record" "mipns1" {
  domain      = exoscale_domain.hbp_link.id
  name        = "mipns1"
  record_type = "A"
  content     = "185.82.101.171"
}

resource "exoscale_domain_record" "mipns2" {
  domain      = exoscale_domain.hbp_link.id
  name        = "mipns2"
  record_type = "A"
  content     = "185.82.100.201"
}

# MX Records
resource "exoscale_domain_record" "mx_redmine" {
  domain      = exoscale_domain.hbp_link.id
  name        = "redmine"
  record_type = "MX"
  prio        = 10
  content     = "mail1.hbp.link"
}

resource "exoscale_domain_record" "mx_rm" {
  domain      = exoscale_domain.hbp_link.id
  name        = "rm"
  record_type = "MX"
  prio        = 10
  content     = "mail1.hbp.link"
}

resource "exoscale_domain_record" "mx_root" {
  domain      = exoscale_domain.hbp_link.id
  name        = "@"
  record_type = "MX"
  prio        = 10
  content     = "parker.dmn.io"
}

# TXT Records
resource "exoscale_domain_record" "txt_redmine" {
  domain      = exoscale_domain.hbp_link.id
  name        = "redmine"
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
}

resource "exoscale_domain_record" "txt_rm" {
  domain      = exoscale_domain.hbp_link.id
  name        = "rm"
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
}

resource "exoscale_domain_record" "txt_root" {
  domain      = exoscale_domain.hbp_link.id
  name        = "@"
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ip4:148.187.96.70 ~all"
}

resource "exoscale_domain_record" "txt_gitlab" {
  domain      = exoscale_domain.hbp_link.id
  name        = "gitlab"
  record_type = "TXT"
  content     = "v=spf1 include:_spf.dmn.io ~all"
}

# CNAME Records
resource "exoscale_domain_record" "cname_vpn" {
  domain      = exoscale_domain.hbp_link.id
  name        = "vpn"
  record_type = "CNAME"
  content     = "vpn1.hbp.link."
}

resource "exoscale_domain_record" "cname_mail" {
  domain      = exoscale_domain.hbp_link.id
  name        = "mail"
  record_type = "CNAME"
  content     = "mail1.hbp.link."
}

resource "exoscale_domain_record" "cname_registry" {
  domain      = exoscale_domain.hbp_link.id
  name        = "registry"
  record_type = "CNAME"
  content     = "gitlab.hbp.link."
}

resource "exoscale_domain_record" "cname_gitlab_pages" {
  domain      = exoscale_domain.hbp_link.id
  name        = "gitlab-pages"
  record_type = "CNAME"
  content     = "gitlab.hbp.link."
}

resource "exoscale_domain_record" "cname_wildcard_gitlab_pages" {
  domain      = exoscale_domain.hbp_link.id
  name        = "*.gitlab-pages"
  record_type = "CNAME"
  content     = "gitlab.hbp.link."
}

resource "exoscale_domain_record" "cname_ns1" {
  domain      = exoscale_domain.hbp_link.id
  name        = "ns1"
  record_type = "CNAME"
  content     = "hbpns1.dmn.io."
}

resource "exoscale_domain_record" "cname_ns2" {
  domain      = exoscale_domain.hbp_link.id
  name        = "ns2"
  record_type = "CNAME"
  content     = "hbpns2.dmn.io."
}
