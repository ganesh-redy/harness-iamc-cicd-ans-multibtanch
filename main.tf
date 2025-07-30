provider "google" {
  project = var.project
  region  = var.region
  zone    = var.zone
}



locals {
  vm_list = split(",", var.vm_names)  # Correctly splits into ["sam", "test1"]
}

resource "google_compute_instance" "vms" {
  for_each =  toset(local.vm_list) 
  name         = each.key
  machine_type = "e2-medium"
  zone         = var.zone

  labels = {
    label1 = each.key 
  }

  boot_disk {
    initialize_params {
      image = "centos-stream-9"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
