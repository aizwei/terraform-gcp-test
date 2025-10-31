provider "google" {
  project = var.project
  region  = var.region
}

resource "google_cloud_run_service" "default" {
  name     = var.service_name
  location = var.region

  template {
    spec {
      containers {
        image = var.image
        ports {
          container_port = 8080
        }
      }

      service_account_name = var.service_account_email != "" ? var.service_account_email : null
    }
  }

  autogenerate_revision_name = true
}