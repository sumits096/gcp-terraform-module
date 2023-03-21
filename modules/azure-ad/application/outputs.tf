output "application_id" {
  value = azuread_application.main[count.index].application_id
}

output "client_secret" {
  description = "Client Secret"
  value       = azuread_application_password.secret[count.index].value
}

output "display_name" {
  value = azuread_application.main[count.index].display_name
}

output "redirect_uris" {
  value = var.azuread_app_redirect_uris
}
