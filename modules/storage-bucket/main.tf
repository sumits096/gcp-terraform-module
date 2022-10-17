resource "google_storage_bucket" "storage_bucket" {
  name                        = var.bucket_name
  project                     = var.project_id
  location                    = var.bucket_location
  storage_class               = var.storage_class
  force_destroy               = true
  uniform_bucket_level_access = true

  labels = {
    buckettype = "json"
  }

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }

  cors {
    origin          = ["*"]
    method          = ["GET", "HEAD", "PUT", "POST", "DELETE"]
    response_header = ["*"]
    max_age_seconds = 3600
  }
}

resource "google_storage_bucket_iam_member" "member" {
  bucket = google_storage_bucket.storage_bucket.name
  role   = "roles/storage.admin"
  member = "serviceAccount:${var.service_account_cloudbuild}"
}
