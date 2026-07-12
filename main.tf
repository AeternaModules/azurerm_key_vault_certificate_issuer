data "azurerm_key_vault_secret" "password" {
  for_each     = { for k, v in var.key_vault_certificate_issuers : k => v if v.password_key_vault_id != null && v.password_key_vault_secret_name != null }
  name         = each.value.password_key_vault_secret_name
  key_vault_id = each.value.password_key_vault_id
}
resource "azurerm_key_vault_certificate_issuer" "key_vault_certificate_issuers" {
  for_each = var.key_vault_certificate_issuers

  key_vault_id  = each.value.key_vault_id
  name          = each.value.name
  provider_name = each.value.provider_name
  account_id    = each.value.account_id
  org_id        = each.value.org_id
  password      = each.value.password != null ? each.value.password : try(data.azurerm_key_vault_secret.password[each.key].value, null)

  dynamic "admin" {
    for_each = each.value.admin != null ? each.value.admin : []
    content {
      email_address = admin.value.email_address
      first_name    = admin.value.first_name
      last_name     = admin.value.last_name
      phone         = admin.value.phone
    }
  }
}

