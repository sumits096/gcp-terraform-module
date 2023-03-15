variable "azuread_client_id" {}
variable "azuread_client_secret" {}
variable "azuread_tenant_id" {}
variable "azuread_app_secret_display_name" {}

variable "azuread_app_secret_end_date" {
  type    = string
  default = "2024-01-01T01:00:00Z"
}

variable "azuread_app_display_name" {
  type = string
}

# A list of redirect URI's for the App Registration. Can be empty.
variable "azuread_app_redirect_uris" {
  type = list(string)
}
