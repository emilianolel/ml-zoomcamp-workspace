# GENERAL VARIABLES
variable "my_creds" {
  description = "my credentials path"
  default     = "../.env/gcp/secrets/mlz-workspace-09d23b5f64dd.json" # Change 
}

variable "region" {
  description = "Region"
  default     = "us-west4"
}

variable "zone" {
  description = "Zone"
  default     = "us-west4-b"
}

variable "project" {
  description = "Proyect"
  default     = "mlz-workspace" # Change
}

variable "location" {
  description = "Project Location"
  default     = "US"
}

variable "static_ip_address_name" {
    description = "Static IP Address Name"
    default = "my-static-ip-address"
}

variable "service_account_email" {
    description = "Service Account Email"
    default = "mlz-emil@mlz-workspace.iam.gserviceaccount.com" # Change
}

variable "compute_instance_name" {
    description = "Compute Instance Name"
    default = "mlz-vm-instance"
}

variable "ssh_username" {
    description = "SSH Username"
    default = "emilel" # Change
}

variable "ssh_pub_key" {
    description = "Path to pub key"
    default = "~/.ssh/mlz-ssh-key.pub" # Change
}
