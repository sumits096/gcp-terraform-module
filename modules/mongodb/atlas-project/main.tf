#----------------------------------------------
# Create project in MongoDB
#----------------------------------------------
resource "mongodbatlas_project" "atlas-project" {
  name   = var.atlas_project_name
  org_id = var.atlas_org_id
}
