variable "project_id" {
  description = "GCP Project ID"
  type        = string
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

variable "vm_name" {
  description = "VM name"
  type        = string
}

variable "machine_type" {
  description = "VM machine type"
  type        = string
  default     = "e2-medium"
}

variable "disk_size" {
  description = "Boot disk size (GB)"
  type        = number
  default     = 20
}

