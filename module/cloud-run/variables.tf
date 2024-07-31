variable "project_id" {
  default = "burner-mansaini"
}

variable "service_name" {
  description = "The name of the Cloud Run service"
  type        = string
}

variable "region" {
  description = "The region where the Cloud Run service will be created"
  type        = string
}

variable "image" {
  description = "The container image to deploy"
  type        = string
}
variable "containers_name" {
  description = "The name of the conatiner"
  type        = string
}
variable "container_port" {
  description = "Port number the container listens on"
  type        = number
}

variable "env_var_value" {
  description = "The value of an environment variable"
  type        = string
}

# variable "network_name" {
#   description = "The name of the VPC network"
#   type        = string
# }

variable "connector_ip_cidr_range" {
  description = "The IP range for the VPC connector"
  type        = string
}

variable "cpu" {
  description = "cpu for containers"
  type        = string
}
variable "memory" {
  description = "memory for containers"
  type        = string
}

variable "min_instance_count" {
  description = "Minimum number of serving instances that this resource should have"
  type        = string
}
variable "max_instance_count" {
  description = "Maximum number of serving instances that this resource should have"
  type        = string
}
variable "existing_traffic_target_allocation" {
  type        = string
  description = "The allocation type for this traffic target. Possible values are: TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST, TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"
}
variable "existing_percent" {
  description = "Specifies percent of the traffic to this Revision. This defaults to zero if unspecified"
  type        = number
}
variable "existing_revision" {
  description = "Revision to which to send this portion of traffic, if traffic allocation is by revision."
  type        = string
}
variable "new_percent" {
  description = "Specifies percent of the traffic to this Revision. This defaults to zero if unspecified"
  type        = string
}
variable "new_revision" {
  description = "Revision to which to send this portion of traffic, if traffic allocation is by revision."
  type        = string
}
variable "new_traffic_target_allocation" {
  type        = string
  description = "The allocation type for this traffic target. Possible values are: TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST, TRAFFIC_TARGET_ALLOCATION_TYPE_REVISION"
}
variable "existing_tag" {
  type        = string
  description = "tag name"
}
variable "new_tag" {
  type        = string
  description = "tag name"
}