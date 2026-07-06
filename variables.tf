variable "key_vault_certificate_issuers" {
  description = <<EOT
Map of key_vault_certificate_issuers, attributes below
Required:
    - key_vault_id
    - name
    - provider_name
Optional:
    - account_id
    - org_id
    - password
    - admin (block):
        - email_address (required)
        - first_name (optional)
        - last_name (optional)
        - phone (optional)
EOT

  type = map(object({
    key_vault_id  = string
    name          = string
    provider_name = string
    account_id    = optional(string)
    org_id        = optional(string)
    password      = optional(string)
    admin = optional(object({
      email_address = string
      first_name    = optional(string)
      last_name     = optional(string)
      phone         = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.key_vault_certificate_issuers : (
        contains(["DigiCert", "GlobalSign", "OneCertV2-PrivateCA", "OneCertV2-PublicCA", "SslAdminV2"], v.provider_name)
      )
    ])
    error_message = "must be one of: DigiCert, GlobalSign, OneCertV2-PrivateCA, OneCertV2-PublicCA, SslAdminV2"
  }
  validation {
    condition = alltrue([
      for k, v in var.key_vault_certificate_issuers : (
        v.org_id == null || (length(v.org_id) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_key_vault_certificate_issuer's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.CertificateIssuerName] !matched
}

