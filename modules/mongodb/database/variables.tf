#----------------------------------------------
# Atlas MongoDB account variables
#----------------------------------------------
variable "atlas_public_key" {}
variable "atlas_private_key" {}
variable "atlas_project_id" {}
variable "atlas_cluster_name" {}
variable "mongo_auto_scaling_disk_gb_enabled" {}
variable "mongo_db_major_version" {}
variable "atlas_cluster_provider" {}
variable "mongo_db_disk_size_gb" {}
variable "atlas_region" {}

variable "cluster_instance_size_name" {
  type        = string
  description = "Cluster instance size name"
  default     = "M0"
}

# ----------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# ----------------------------------------------------------------------------
variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether to create resources within the module or not."
  default     = true
}
