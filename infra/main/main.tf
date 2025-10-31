provider "google" {
  project = var.project
  region  = var.region
}

module "cloudrun" {
  source                = "../modules/cloudrun"
  project               = var.project
  region                = var.region
  service_name          = var.service_name
  image                 = var.image
  service_account_email = var.service_account_email
}
