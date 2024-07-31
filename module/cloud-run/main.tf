resource "google_cloud_run_v2_service" "default" {
  name     = var.service_name
  location = var.region
  ingress  = "INGRESS_TRAFFIC_ALL"
  project  = var.project_id

  template {
    containers {
      name  = var.containers_name
      image = var.image
      ports {
        container_port = var.container_port
      }
      resources {
        limits = {
          cpu    = var.cpu
          memory = var.memory
        }
      }
      env {
        name  = "ENV_VAR"
        value = var.env_var_value
      }
    }
    # vpc_access{
    #   network_interfaces {
    #     network = var.network_name
    #   }
    # }
    scaling {
      min_instance_count = var.min_instance_count
      max_instance_count = var.max_instance_count
    }
  }

  traffic {
    type     = var.existing_traffic_target_allocation
    percent  = var.existing_percent
    revision = var.existing_revision
    tag      = var.existing_tag
  }
  traffic {
    percent  = var.new_percent
    revision = var.new_revision
    type     = var.new_traffic_target_allocation
    tag      = var.new_tag
  }
}
