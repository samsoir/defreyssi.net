terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.29.0"
    }
  }
}

provider "google" {
  credentials = file("_keys/defreyssi-net-creds.json")

  project = "defreyssi-net"
  region  = "us-west1"
  zone    = "us-west1-b"
}

resource "google_storage_bucket" "static" {
  name          = "defreyssi-net-hugo-site-bucket"
  location      = "US"
  storage_class = "STANDARD"

  uniform_bucket_level_access = true
}
