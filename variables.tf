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
variable "cloud_run_region" {}

#----------------------------------------------
# Cloud task queue variable
#----------------------------------------------
variable "task_name_cxm" {}
variable "task_name_crm" {}
variable "task_location" {}
variable "max_concurrent_dispatches_cxm" {}
variable "max_concurrent_dispatches_crm" {}
variable "max_dispatches_per_second_cxm" {}
variable "max_dispatches_per_second_crm" {}
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


