resource "google_cloud_tasks_queue" "cloud_task_queue" {
  name     = var.task_name
  location = var.task_location

  # app_engine_routing_override {
  #   service  = "worker"
  #   version  = "1.0"
  #   instance = "test"
  # }

  rate_limits {
    max_concurrent_dispatches = var.max_concurrent_dispatches
    max_dispatches_per_second = var.max_dispatches_per_second
  }

  retry_config {
    max_attempts       = var.max_attempts
    max_retry_duration = var.max_retry_duration
    max_backoff        = var.max_backoff
    min_backoff        = var.min_backoff
    max_doublings      = var.max_doublings
  }

  stackdriver_logging_config {
    sampling_ratio = var.sampling_ratio
  }
}
