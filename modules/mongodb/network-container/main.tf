resource "mongodbatlas_network_container" "network_container" {
  count            = 0
  project_id       = var.atlas_project_id
  atlas_cidr_block = var.atlas_cidr_block
  provider_name    = var.atlas_cluster_provider
}

resource "mongodbatlas_private_ip_mode" "private_ip_mode" {
  count      = 0
  project_id = var.atlas_project_id
  enabled    = true
}
