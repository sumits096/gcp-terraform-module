resource "google_cloud_tasks_queue_iam_member" "cloud_task_member" {
  project  = var.project_id
  location = var.region
  name     = var.cloud_tasks_queue_name
  role     = "roles/cloudtasks.enqueuer"
  member   = "serviceAccount:388793584861-compute@developer.gserviceaccount.com"
}
