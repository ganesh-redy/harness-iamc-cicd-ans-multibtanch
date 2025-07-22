provider "google" {
  credentials = file("/tmp/gcp.json")
  project     = var.project
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "vms" {
  count        = length(var.vm_names)
  name         = "${var.vm_names[count.index]}"
  machine_type = "e2-medium"
  zone         = var.zone

  labels = {
    lap = var.vm_names[count.index]
  }

  boot_disk {
    initialize_params {
      image = "centos-stream-9"
    }
  }

  network_interface {
    network       = "default"
    access_config {}
  }

}
