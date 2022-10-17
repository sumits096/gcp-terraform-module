# Create the atlas mongo peer
resource "mongodbatlas_network_peering" "peer_mongo_network" {
  project_id       = var.atlas_project_id
  network_name     = var.atlas_peering_name
  atlas_cidr_block = var.atlas_cidr_block
  container_id     = var.atlas_cluster_container_id
  provider_name    = var.atlas_cluster_provider
  gcp_project_id   = var.gcp_project_id
}

# Create the GCP peer
resource "google_compute_network_peering" "peer_gcp_network" {
  name         = var.gcp_peering_name
  network      = var.gcp_vpc_network_self_link
  peer_network = "https://www.googleapis.com/compute/v1/projects/${mongodbatlas_network_peering.peer_mongo_network.atlas_gcp_project_id}/global/networks/${mongodbatlas_network_peering.peer_mongo_network.atlas_vpc_name}"
}
