#----------------------------------------------
# Create a MongoDB Atlas Cluster
#----------------------------------------------
resource "mongodbatlas_cluster" "atlas-cluster" {
  count                        = var.module_enabled ? 1 : 0
  project_id                   = var.atlas_project_id
  name                         = var.atlas_cluster_name
  auto_scaling_disk_gb_enabled = var.mongo_auto_scaling_disk_gb_enabled
  mongo_db_major_version       = var.mongo_db_major_version
  provider_name                = var.atlas_cluster_provider
  disk_size_gb                 = var.mongo_db_disk_size_gb
  provider_instance_size_name  = var.cluster_instance_size_name
  provider_region_name         = var.atlas_region
}

