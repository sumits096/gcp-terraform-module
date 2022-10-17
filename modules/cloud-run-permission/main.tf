resource "google_cloud_run_service_iam_member" "cloud_run_member" {
  location = var.region
  project  = var.project_id
  service  = var.build_service
  role     = "roles/run.viewer"
  member   = "serviceAccount:${var.service_account_cloudbuild}"
}
