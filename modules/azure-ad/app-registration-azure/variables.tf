variable "azure_app_display_name" {
  type = string
}

# A list of redirect URI's for the App Registration. Can be empty.
variable "redirect_uris" {
  type = list(string)
}
