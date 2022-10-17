#----------------------------------------------
# GCP account variables
#----------------------------------------------
variable "access_token" {}
variable "project_id" {}
variable "region" {}
variable "zone" {}

#----------------------------------------------
# SonarQube variables 
#----------------------------------------------
variable "execute_quality_gate" {}
variable "sonar_token" {}
variable "sonar_url" {}

#----------------------------------------------
# Pub/Sub variables 
#----------------------------------------------
variable "pubsub_topic_name" {}
variable "pubsub_message" {}

#----------------------------------------------
# Github respository variable
#----------------------------------------------
variable "version_control_owner" {
  description = "github owner name"
  type        = string
  default     = "boomtown"
}

variable "version_control_repo_name" {
  description = "github repository name"
  type        = string
  default     = "connector-ts"
}

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
  default     = "connector/workflow/cloudbuild-code-quality.yaml"
}

variable "build_image" {}
