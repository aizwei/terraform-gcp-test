# 🧩 Dummy API — Terraform on GCP (Interview Task)

This repository contains a simple Node.js API and Terraform configuration
to deploy it on **Google Cloud Run** using **Terraform**.

---

## 🧱 Objective

- Add Terraform to provision the infrastructure on GCP.
- Deploy the containerized API to Cloud Run.
- Fix and explain encountered issues (permissions, backend setup, etc.).

---

## 🧰 Prerequisites

- Terraform >= 1.4
- Docker
- gcloud CLI
- A GCP project and a service account JSON key (`service_account.json`)

Authenticate:

```bash
export GOOGLE_APPLICATION_CREDENTIALS="$PWD/service_account.json"
PROJECT_ID=$(jq -r .project_id service_account.json)
gcloud auth activate-service-account --key-file="$GOOGLE_APPLICATION_CREDENTIALS"
gcloud config set project "$PROJECT_ID"
