#----------------------------------------------
# GCP account variables
#----------------------------------------------
variable "access_token" {}
variable "project_id" {}
variable "region" {}
variable "zone" {}

#----------------------------------------------
# Github respository variable
#----------------------------------------------
variable "version_control_owner" {}
variable "version_control_repo_name" {}

variable "version_control_branch_name" {
  description = "github branch name"
  type        = string
  default     = "^master$"
}

# ----------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# ----------------------------------------------------------------------------
variable "module_enabled" {
  type        = bool
  description = "(Optional) Whether to create resources within the module or not."
  default     = true
}

variable "build_trigger_name" {
  description = "build trigger name"
  type        = string
  default     = "terraform-trigger"
}

variable "build_trigger_description" {
  description = "build trigger description"
  type        = string
  default     = "Trigger build"
}

variable "build_trigger_status" {
  description = "build status"
  type        = bool
  default     = false
}

variable "build_trigger_filename" {
  description = "cloudbuild yaml file path"
  type        = string
  default     = "connector/workflow/cloudbuild-linting.yaml"
}
