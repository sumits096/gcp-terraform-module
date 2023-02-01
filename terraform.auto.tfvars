#----------------------------------------------
# GCP infrastructure
# GCP account variables
#----------------------------------------------
service_account_credentials = ""
project_id                  = "connectors-playground"
service_account_default     = ""
service_account_cloudbuild  = ""
region                      = "us-central1"
zone                        = "us-central1-a"

#----------------------------------------------
# Cloud task queue variable
#----------------------------------------------
task_name                 = "ovation-webhook-queue"
task_location             = "us-central1"
max_concurrent_dispatches = 3
max_dispatches_per_second = 2
max_attempts              = 5
max_retry_duration        = "4s"
max_backoff               = "3s"
min_backoff               = "2s"
max_doublings             = 1
sampling_ratio            = 0.9
