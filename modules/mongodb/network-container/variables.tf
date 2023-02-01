#----------------------------------------------
# Atlas MongoDB account variables
#----------------------------------------------
variable "atlas_public_key" {}
variable "atlas_private_key" {}
variable "atlas_project_id" {}

variable "atlas_cidr_block" {
  type        = string
  description = "Atlas cidr block"
  default     = "192.168.0.0/16"
}

variable "atlas_cluster_provider" {
  type        = string
  description = "Atlas mongo provider"
  default     = "GCP"
}

# ----------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# ----------------------------------------------------------------------------
variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether to create resources within the module or not."
  default     = false
}
