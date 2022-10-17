variable "service_account_credentials" {}
variable "service_account_cloudbuild" {}
variable "project_id" {}
variable "region" {}
variable "zone" {}
variable "secrets" {
  sensitive = true
}
