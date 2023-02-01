module "connector_staging_cloud_task" {
  source                      = "./modules/cloud-task-queue"
  service_account_credentials = var.service_account_credentials
  project_id                  = var.project_id
  region                      = var.region
  zone                        = var.zone
  task_name                   = var.task_name
  task_location               = var.task_location
  max_concurrent_dispatches   = var.max_concurrent_dispatches
  max_dispatches_per_second   = var.max_dispatches_per_second
  max_attempts                = var.max_attempts
  max_retry_duration          = var.max_retry_duration
  max_backoff                 = var.max_backoff
  min_backoff                 = var.min_backoff
  max_doublings               = var.max_doublings
  sampling_ratio              = var.sampling_ratio
}
