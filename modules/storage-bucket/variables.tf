#----------------------------------------------
# GCP account variables
#----------------------------------------------
variable "service_account_credentials" {}
variable "service_account_cloudbuild" {}
variable "project_id" {}
variable "region" {}
variable "zone" {}

variable "bucket_name" {
  type        = string
  description = "storage bucket name"
  default     = "connector-bucket"
}

variable "bucket_location" {
  type        = string
  description = "location name"
  default     = "US"
}

variable "storage_class" {
  description = "Bucket storage class."
  type        = string
  default     = "STANDARD"
}
