resource "google_cloud_task_service_iam_member" "cloud_task_member" {
  location = var.region
  project  = var.project_id
  service  = var.build_service
  role     = "roles/cloudtasks.enqueuer"
  member   = "serviceAccount:${var.project_id}@cloudbuild.gserviceaccount.com"
}
