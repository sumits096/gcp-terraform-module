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
  access_token = var.access_token
  project      = var.project_id
  region       = var.region
  zone         = var.zone
}

provider "google-beta" {
  access_token = var.access_token
  project      = var.project_id
  region       = var.region
  zone         = var.zone
}
