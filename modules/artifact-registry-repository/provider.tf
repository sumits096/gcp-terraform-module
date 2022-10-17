terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    google-beta = {
      source = "hashicorp/google-beta"
    }
  }
}

provider "google" {
  credentials = var.service_account_credentials
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}

provider "google-beta" {
  credentials = var.service_account_credentials
  project     = var.project_id
  region      = var.region
  zone        = var.zone
}
