variable "vm_names" {
  description = "List of VM names"
  type        = list(string)
}

variable "number" {
  description = "Unique number suffix"
  type        = string
}

variable "project" {
  description = "GCP project ID"
  type        = string
  default     = ""  # Replace with your real project ID or pass via -var
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}
