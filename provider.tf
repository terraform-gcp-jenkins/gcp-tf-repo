terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.26.0"
    }
  }
}
provider "google" {
    credentials = "${file("permission.json")}"
   //  credentials = "${file("${var.TFILE}")}"
    project     = var.project_id
    region      = var.reg
    zone        = var.zone
}
