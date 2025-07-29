output "debug_vm_list" {
  value = local.vm_list
}

output "debug_count" {
  value = length(local.vm_list)
}
