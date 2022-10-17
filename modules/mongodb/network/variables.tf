#----------------------------------------------
# Atlas MongoDB account variables
#----------------------------------------------
variable "atlas_public_key" {}
variable "atlas_private_key" {}
variable "atlas_project_id" {}

variable "whitelist_ip_address" {
  type        = string
  description = "Whitelist ip address"
  default     = "127.0.0.0"
}

variable "whitelist_list_cidr" {
  type        = string
  description = "CIDR to whitelist access to the project"
  default     = "10.253.20.90/29"
}
