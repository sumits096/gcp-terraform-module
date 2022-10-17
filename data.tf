# data "google_client_config" "default" {
#   provider = google
# }

# data "google_service_account_access_token" "sa_access_token" {
#   provider               = google
#   target_service_account = var.service_account_default
#   scopes                 = ["userinfo-email", "cloud-platform"]
#   lifetime               = "300s"
# }

# data "google_client_openid_userinfo" "sa_user" {
#   provider = google.impersonated
# }
