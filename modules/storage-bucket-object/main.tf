resource "google_storage_bucket_object" "content_folder" {
  name    = var.directory_name
  content = var.content
  bucket  = var.bucket_name
}
