output "key_vault_certificate_issuers_account_id" {
  description = "Map of account_id values across all key_vault_certificate_issuers, keyed the same as var.key_vault_certificate_issuers"
  value       = { for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : k => v.account_id }
}
output "key_vault_certificate_issuers_admin" {
  description = "Map of admin values across all key_vault_certificate_issuers, keyed the same as var.key_vault_certificate_issuers"
  value       = { for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : k => v.admin }
}
output "key_vault_certificate_issuers_key_vault_id" {
  description = "Map of key_vault_id values across all key_vault_certificate_issuers, keyed the same as var.key_vault_certificate_issuers"
  value       = { for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : k => v.key_vault_id }
}
output "key_vault_certificate_issuers_name" {
  description = "Map of name values across all key_vault_certificate_issuers, keyed the same as var.key_vault_certificate_issuers"
  value       = { for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : k => v.name }
}
output "key_vault_certificate_issuers_org_id" {
  description = "Map of org_id values across all key_vault_certificate_issuers, keyed the same as var.key_vault_certificate_issuers"
  value       = { for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : k => v.org_id }
}
output "key_vault_certificate_issuers_password" {
  description = "Map of password values across all key_vault_certificate_issuers, keyed the same as var.key_vault_certificate_issuers"
  value       = { for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : k => v.password }
  sensitive   = true
}
output "key_vault_certificate_issuers_provider_name" {
  description = "Map of provider_name values across all key_vault_certificate_issuers, keyed the same as var.key_vault_certificate_issuers"
  value       = { for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : k => v.provider_name }
}

