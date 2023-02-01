#----------------------------------------------
# GCP infrastructure
# GCP account variables
#----------------------------------------------
variable "service_account_credentials" {}
variable "service_account_default" {}
variable "service_account_cloudbuild" {}
variable "project_id" {}
variable "region" {}
variable "zone" {}

#----------------------------------------------
# Cloud task queue variable
#----------------------------------------------
variable "task_name" {}
variable "task_location" {}
variable "max_concurrent_dispatches" {}
variable "max_dispatches_per_second" {}
variable "max_attempts" {}
variable "max_retry_duration" {}
variable "max_backoff" {}
variable "min_backoff" {}
variable "max_doublings" {}
variable "sampling_ratio" {}
