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


