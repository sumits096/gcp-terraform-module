#----------------------------------------------
# GCP account variables
#----------------------------------------------
variable "service_account_credentials" {}
variable "project_id" {}
variable "region" {}
variable "zone" {}

#----------------------------------------------
# GCP network
#----------------------------------------------
variable "gcp_project_id" {}
variable "gcp_peering_name" {}
variable "gcp_vpc_network_name" {}
variable "gcp_vpc_network_self_link" {}

#----------------------------------------------
# Atlas mongo account variables
#----------------------------------------------
variable "atlas_public_key" {}
variable "atlas_private_key" {}

#----------------------------------------------
# Atlas mongo network
#----------------------------------------------
variable "atlas_project_id" {}
variable "atlas_peering_name" {}
variable "atlas_cidr_block" {}
variable "atlas_cluster_container_id" {}
variable "atlas_cluster_provider" {}

# ----------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# ----------------------------------------------------------------------------
variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether to create resources within the module or not."
  default     = false
}
