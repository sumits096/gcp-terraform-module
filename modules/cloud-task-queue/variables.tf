#----------------------------------------------
# GCP account variables
#----------------------------------------------
variable "service_account_credentials" {}
variable "project_id" {}
variable "region" {}
variable "zone" {}

#----------------------------------------------
# GCP cloud task variables
#----------------------------------------------
variable "task_name" {
  type        = string
  description = "The queue name."
  default     = "cloud-task-queue"
}

variable "task_location" {
  type        = string
  description = "The location of the queue"
  default     = "us-central1"
}

variable "max_concurrent_dispatches" {
  type        = number
  description = "The maximum rate at which tasks are dispatched from this queue."
  default     = 3
}

variable "max_dispatches_per_second" {
  type        = number
  description = "The maximum number of concurrent tasks that Cloud Tasks allows to be dispatched for this queue."
  default     = 2
}

variable "max_attempts" {
  type        = number
  description = "Number of attempts per task."
  default     = 5
}

variable "max_retry_duration" {
  type        = string
  description = "If positive, maxRetryDuration specifies the time limit for retrying a failed task"
  default     = "4s"
}

variable "max_backoff" {
  type        = string
  description = "A task will be scheduled for retry between minBackoff and maxBackoff duration after it fails"
  default     = "3s"
}

variable "min_backoff" {
  type        = string
  description = "A task will be scheduled for retry between minBackoff and maxBackoff duration after it fails"
  default     = "2s"
}

variable "max_doublings" {
  type        = number
  description = "The time between retries will double maxDoublings times."
  default     = 1
}

variable "sampling_ratio" {
  type        = number
  description = "The fraction of operations to write to Stackdriver Logging."
  default     = 0.9
}
