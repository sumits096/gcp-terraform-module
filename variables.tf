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

#----------------------------------------------
# Network peering variables
#----------------------------------------------
# VPC Network variables
variable "network_name" {}
variable "auto_create_subnetworks" {}
variable "firewall_rule_name" {}
variable "vpc_subnetworks" {}
variable "vpc_access_name" {}
variable "compute_address_name" {}
variable "router_name" {}
variable "router_nat_name" {}

# VPC Network peering variables
variable "gcp_peering_name" {}
variable "atlas_peering_name" {}
variable "atlas_cidr_block" {}


