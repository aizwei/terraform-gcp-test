variable "project" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "Deployment region"
  type        = string
  default     = "europe-southwest1"
}

variable "service_name" {
  description = "Cloud Run service name"
  type        = string
  default     = "dummy-api"
}

variable "image" {
  description = "Container image to deploy"
  type        = string
}

variable "service_account_email" {
  description = "Service account to run Cloud Run service"
  type        = string
  default     = ""
}
