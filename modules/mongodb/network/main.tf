#----------------------------------------------
# Whitelist ip address for access
#----------------------------------------------
resource "mongodbatlas_project_ip_access_list" "project-whitelist-ip" {
  project_id = var.atlas_project_id
  ip_address = var.whitelist_ip_address
  comment    = "IP Address for development team"
}

#----------------------------------------------
# Whitelist CIDR
#----------------------------------------------
resource "mongodbatlas_project_ip_access_list" "atlas-whitelist-cidr" {
  project_id = var.atlas_project_id
  cidr_block = var.whitelist_list_cidr
}
