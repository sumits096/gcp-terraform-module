output "application_id" {
  value = azuread_application.main.application_id
}

output "client_secret" {
  description = "Client Secret"
  value       = azuread_application_password.secret.value
}

output "display_name" {
  value = azuread_application.main.display_name
}

output "redirect_uris" {
  value = var.redirect_uris
}