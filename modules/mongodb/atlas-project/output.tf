#----------------------------------------------
# Export project-id in MongoDB
#----------------------------------------------
output "project_id" {
  value = mongodbatlas_project.atlas-project.id
}
