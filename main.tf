# module "network" {
#   source                  = "./module/network"
#   network_name            = "cloud-run-network"
#   subnetwork_name         = "cloud-run-subnetwork"
#   ip_cidr_range           = "10.2.0.0/16"
#   region                  = "us-central1"
#   project_id              = "burner-mansaini"
#   secondary_range_name    = "cloud-run-secondary-ip"
#   secondary_ip_cidr_range = "192.168.10.0/24"
# }

module "cloud_run" {
  source          = "./module/cloud-run"
  service_name    = "cloud-run-service"
  region          = "us-central1"
  containers_name = "hello-world"
  # network_name = module.network.network_id
  # image           = "us-central1-docker.pkg.dev/burner-mansaini/myfirstrepo/hw-flask@sha256:5e15365f0f3c84e2ab0d36b56852de949ec6a9da941acc37388ecd408e494ed3"
  image                              = "us-docker.pkg.dev/cloudrun/container/hello"
  container_port                     = 8080
  env_var_value                      = "foo"
  connector_ip_cidr_range            = "10.8.0.0/28"
  cpu                                = "1"
  memory                             = "1024Mi"
  max_instance_count                 = 1
  min_instance_count                 = 0
  existing_revision                  = ""
  existing_tag                       = ""
  existing_percent                   = 100
  existing_traffic_target_allocation = "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"
  new_percent                        = 0
  new_tag                            = ""
  new_revision                       = ""
  new_traffic_target_allocation      = "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"
}


# module "cloud_run" {
#   source       = "./module/cloud-run"
#   service_name = "cloud-run-service"
#   region       = "us-central1"
#     image                     = "us-docker.pkg.dev/cloudrun/container/hello"
# #   image                     = "us-central1-docker.pkg.dev/burner-mansaini/cloud-run-source-deploy/echo-image:latest"
#   env_var_value             = "foo"
# #   network_name              = module.network.network_id
#   connector_ip_cidr_range   = "10.8.0.0/28"
#   cpu                       = "1"
#   memory                    = "1024Mi"
#   revision                  = ""
#   percent                   = "100"
#   traffic_target_allocation = "TRAFFIC_TARGET_ALLOCATION_TYPE_LATEST"
#   max_instance_count        = 1
#   min_instance_count        = 0
#   #   existing_revision         = "cloud-run-service-00001-mdr"  # Replace with your actual current revision name
#   #   existing_percent          = "100"  # 100% traffic for the existing revision
# }