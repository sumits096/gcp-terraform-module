resource "google_secret_manager_secret" "secret-keys" {
  for_each  = nonsensitive(var.secrets)
  secret_id = each.key
  labels = {
    label = each.value.keyLabel
  }
  replication {
    automatic = true
  }
}

resource "google_secret_manager_secret_version" "secret-data" {
  for_each    = nonsensitive(var.secrets)
  secret      = google_secret_manager_secret.secret-keys[each.key].id
  secret_data = replace(each.value.keyValue, "\n", "\\n")
}

resource "google_secret_manager_secret_iam_member" "secret_iam_permission" {
  provider  = google-beta
  for_each  = nonsensitive(var.secrets)
  secret_id = google_secret_manager_secret.secret-keys[each.key].id
  role      = "roles/secretmanager.secretAccessor"
  member    = "serviceAccount:${var.service_account_cloudbuild}"
}
