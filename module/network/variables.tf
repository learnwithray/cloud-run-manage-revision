variable "project_id" {
  default = "burner-mansaini"
}


variable "network_name" {
  description = "The name of the VPC network"
  type        = string
}


variable "subnetwork_name" {
  description = "The name of the subnetwork"
  type        = string
}

variable "ip_cidr_range" {
  description = "The primary IP range of the subnetwork"
  type        = string
}

variable "region" {
  description = "The region where the subnetwork will be created"
  type        = string
}

variable "secondary_range_name" {
  description = "The name of the secondary IP range"
  type        = string
}

variable "secondary_ip_cidr_range" {
  description = "The secondary IP range of the subnetwork"
  type        = string
}
