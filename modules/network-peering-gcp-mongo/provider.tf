terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
    }
    google-beta = {
      source = "hashicorp/google-beta"
    }
    mongodbatlas = {
      source  = "mongodb/mongodbatlas"
      version = "1.4.5"
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

provider "mongodbatlas" {
  public_key  = var.atlas_public_key
  private_key = var.atlas_private_key
}

