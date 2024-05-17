## Terraform / OpenTofu DNS Management Project

This project utilizes Terraform / OpenTofu to manage DNS records for multiple domains using the Exoscale provider. It is designed to allow easy updates and robust management of A, MX, TXT, and CNAME records across various subdomains.
There is not yet any CI or automation using public Github or Terraform workers for security reasons. No evaluation on this regard has been made internally yet.

### Prerequisites

Before you begin, ensure you have the following installed:

- Terraform / OpenTofu (version 0.12.x or higher)
- Access to an Exoscale account with API credentials

Note: If your domain is already created in the management portal, you will need to run:
```
tofu import exoscale_domain.hbp_link domain_id_or_name_here
```
__For internal use:__ You will need Terraform and do `tofu login app.terraform.io` to be able retrieve the `tfstate`. 

### Project Structure

The project is organized as follows:

- `providers.tf` (not included in the repository): Configures the Exoscale provider.
- `domains.tf`: Contains resources for domain registrations.
- `records-<domain>.tf`: Each of these files manages the DNS records for a specific domain.
- `outputs.tf`: Defines outputs that provide information about the DNS records.
- `backend.tf`: Location of our backend for internal use. Other users can adapt this file to their needs or remove it.

### Setup

1. **Clone the Repository:**

   ```
   git clone https://github.com/NeuroTech-Platform/domains-management-tf
   cd domains-management-tf
   ```

2. **Configure the Exoscale Provider:** Create a `secrets.tfvars` file locally with the following content, replacing placeholders with your actual API keys:

   ```
   exoscale_api_key    = "your-exoscale-api-key - EXO..."
   exoscale_api_secret = "your-exoscale-api-secret"
   ```

3. **Initialize Terraform / OpenTofu:** Run Terraform / OpenTofu to initialize your environment and download the necessary providers:

   ```
   tofu init
   ```

4. **Plan Your Changes:** Preview the changes Terraform / OpenTofu will make based on the current configuration:

   ```
   tofu plan -var-file="secrets.tfvars"
   ```

5. **Apply Your Configuration:** Apply the configuration to update the DNS records:

   ```
   tofu apply -var-file="secrets.tfvars"
   ```

### Managing DNS Records

To manage DNS records, edit the corresponding `records-<domain>.tf` files. Each file contains Terraform / OpenTofu resources related to a specific domain. You can add, modify, or remove records by updating these files and then rerunning `tofu apply`.

### Outputs

After applying your Terraform / OpenTofu configuration, outputs defined in `outputs.tf` can be viewed to confirm the details of the DNS records managed by Terraform / OpenTofu:

```
tofu output
```

### Best Practices

- **Version Control:** Keep all changes in version control, except for `providers.tf`, to track modifications and revert if necessary.
- **Secure API Keys:** Never commit your API keys to the repository. Instead, manage them locally or use environment variables.
- **Regular Updates:** Regularly update your Terraform / OpenTofu configurations and keep up with new releases from the Exoscale provider and Terraform / OpenTofu itself.


### Possible improvments

In the future, if we need to retrieve the list of DNS records set via `outputs.tf`, we can do the following:
- Use modules to manage DNS records
Example of `modules/dns_records_hbp_link/main.tf`
```
variable "records" {
  type = list(object({
    name        : string
    record_type : string
    content     : string
  }))
}

resource "exoscale_domain_record" "dns_record_hbp_link" {
  for_each = { for idx, rec in var.records : idx => rec }

  domain      = exoscale_domain.hbp_link.id
  name        = each.value.name
  record_type = each.value.record_type
  content     = each.value.content
}
```
- use it for `records-hbp-link.tf`, in the following way
```
module "dns_records" {
  source  = "./modules/dns_records_hbp_link"
  records = [
    {
      name        = "rm",
      record_type = "A",
      content     = "148.187.148.239"
    },
    {
      name        = "mail",
      record_type = "MX",
      content     = "mail.hbp.link"
    },
    ...
  ]
}
```
- Change `outputs.tf` to something similar to:
```
locals {
  domain_names = {
    "hbp_link"      = exoscale_domain.hbp_link.name,
    "hbpmip_link"   = exoscale_domain.hbpmip_link.name,
    "thehip_app"    = exoscale_domain.thehip_app.name,
    "neurotech_app" = exoscale_domain.neurotech_app.name
  }
}

output "domain_names" {
  value = { for k, v in local.domain_names : k => v }
}

output "dns_records_hbp_link" {
  value = { for record in module.dns_records_hbp_link : record.name => record.value }
}

...
```

### Acknowledgement

This repository is part of a research project that has received funding from the Swiss State Secretariat for Education, Research and Innovation (SERI) as part of the Horizon Europe project “EBRAINS 2.0”, contract number 23.00638

<img src="images/funder_picture.png" alt="SERI funding logo" style="max-width: 700px; width: 100%; height: auto;"/>