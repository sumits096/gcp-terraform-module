#----------------------------------------------
# GCP account variables
#----------------------------------------------
variable "access_token" {}
variable "project_id" {}
variable "region" {}
variable "zone" {}
variable "cloud_run_region" {}

#----------------------------------------------
# Pub/Sub variables 
#----------------------------------------------
variable "pubsub_topic_name" {}
variable "pubsub_message" {}

#----------------------------------------------
# Environment substitutions variable 
#----------------------------------------------
variable "environment" {}
variable "vpc_connector" {}
variable "env_project_id" {}

#----------------------------------------------
# Github respository variable
#----------------------------------------------
variable "version_control_token" {
  type        = string
  description = "version control token"
  default     = "default"
}

variable "version_control_owner" {
  description = "github owner name"
  type        = string
  default     = "boomtown"
}

variable "version_control_username" {
  description = "github user name"
  type        = string
  default     = "boomtown"
}

variable "version_control_useremail" {
  description = "github user email"
  type        = string
  default     = "sysadmin@goboomtown.com"
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

variable "version_control_repo_name_playwright" {}

# ----------------------------------------------------------------------------
# MODULE CONFIGURATION PARAMETERS
# ----------------------------------------------------------------------------
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
  default     = "connector/workflow/cloudbuild.yaml"
}

variable "build_image" {}
variable "build_service" {}

variable "execute_automation_tests" {
  description = "to execute playright test cases"
  type        = bool
  default     = false
}

variable "bucket_name" {
  description = "storage bucket name for cdn"
  type        = string
  default     = "connector-cdn"
}
