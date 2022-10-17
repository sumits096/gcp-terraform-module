output "connector_storage_bucket_name" {
  description = "Connector storage bucket name"
  value       = google_storage_bucket.storage_bucket.name
}
