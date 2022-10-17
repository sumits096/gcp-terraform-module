#----------------------------------------------
# GCP account variables
#----------------------------------------------
variable "service_account_credentials" {}
variable "project_id" {}
variable "region" {}
variable "zone" {}

#----------------------------------------------
# VPC network variables
#----------------------------------------------
variable "network_name" {}
variable "auto_create_subnetworks" {}
variable "firewall_rule_name" {}
variable "vpc_subnetworks" {}
variable "network_region" {}
variable "vpc_access_name" {}
variable "compute_address_name" {}
variable "router_name" {}
variable "router_nat_name" {}
