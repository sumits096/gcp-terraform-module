#----------------------------------------------
# Atlas MongoDB account variables
#----------------------------------------------
variable "atlas_public_key" {}
variable "atlas_private_key" {}

variable "atlas_project_name" {
  type        = string
  description = "Atlas project name"
}

variable "atlas_org_id" {
  type        = string
  description = "Atlas organization id"
}
