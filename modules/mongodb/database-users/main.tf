#----------------------------------------------
# Create MongoDB database user
#----------------------------------------------
resource "mongodbatlas_database_user" "db-user" {
  project_id         = var.atlas_project_id
  username           = var.database_username
  password           = var.database_password
  auth_database_name = var.auth_database_name

  roles {
    role_name     = var.database_user_role
    database_name = var.atlas_cluster_name
  }
}


