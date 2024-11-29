variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "service_account_key_path" {
  description = "Path to the GCP service account key JSON"
  type        = string
}

variable "runner_machine_type" {
  description = "Machine type for the runner instance"
  default     = "e2-medium"
}
