output "vm_names" {
  value = [for i in google_compute_instance.vms : i.name]
}

output "vm_labels" {
  value = [for i in google_compute_instance.vms : i.labels]
}
