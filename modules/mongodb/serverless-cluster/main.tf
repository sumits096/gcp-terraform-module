#----------------------------------------------
# Create a MongoDB Atlas Cluster serveless
#----------------------------------------------
resource "mongodbatlas_serverless_instance" "atlas-cluster" {
  project_id                              = var.atlas_project_id
  name                                    = var.atlas_cluster_name
  provider_settings_backing_provider_name = var.atlas_cluster_provider
  provider_settings_provider_name         = "SERVERLESS"
  provider_settings_region_name           = var.atlas_region
}
