output "application_id" {
  count = 0
  value = azuread_application.main[count.index].application_id
}

output "client_secret" {
  count       = 0
  description = "Client Secret"
  value       = azuread_application_password.secret[count.index].value
}

output "display_name" {
  count = 0
  value = azuread_application.main[count.index].display_name
}

output "redirect_uris" {
  value = var.azuread_app_redirect_uris
}
