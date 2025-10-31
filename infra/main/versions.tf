terraform {
  required_version = ">= 1.4"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0"
    }
  }

  backend "gcs" {
    bucket = "terraform-test-bucket"
    prefix = "terraform/state"
  }
}

resource "google_storage_bucket" "test_bucket" {
  name          = "terraform-test-bucket"
  location      = var.region
  force_destroy = true
  uniform_bucket_level_access = true
}
