output "key_vault_certificate_issuers" {
  description = "All key_vault_certificate_issuer resources"
  value       = azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers
  sensitive   = true
}
output "key_vault_certificate_issuers_account_id" {
  description = "List of account_id values across all key_vault_certificate_issuers"
  value       = [for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : v.account_id]
}
output "key_vault_certificate_issuers_admin" {
  description = "List of admin values across all key_vault_certificate_issuers"
  value       = [for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : v.admin]
}
output "key_vault_certificate_issuers_key_vault_id" {
  description = "List of key_vault_id values across all key_vault_certificate_issuers"
  value       = [for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : v.key_vault_id]
}
output "key_vault_certificate_issuers_name" {
  description = "List of name values across all key_vault_certificate_issuers"
  value       = [for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : v.name]
}
output "key_vault_certificate_issuers_org_id" {
  description = "List of org_id values across all key_vault_certificate_issuers"
  value       = [for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : v.org_id]
}
output "key_vault_certificate_issuers_password" {
  description = "List of password values across all key_vault_certificate_issuers"
  value       = [for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : v.password]
  sensitive   = true
}
output "key_vault_certificate_issuers_provider_name" {
  description = "List of provider_name values across all key_vault_certificate_issuers"
  value       = [for k, v in azurerm_key_vault_certificate_issuer.key_vault_certificate_issuers : v.provider_name]
}

