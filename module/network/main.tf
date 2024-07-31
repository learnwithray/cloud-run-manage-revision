resource "google_compute_network" "cloud-run-network" {
  name                    = var.network_name
  auto_create_subnetworks = false
  project                 = var.project_id
}

resource "google_compute_subnetwork" "cloud-run-subnetwork" {
  name          = var.subnetwork_name
  project       = var.project_id
  ip_cidr_range = var.ip_cidr_range
  region        = var.region
  network       = google_compute_network.cloud-run-network.id
  secondary_ip_range {
    range_name    = var.secondary_range_name
    ip_cidr_range = var.secondary_ip_cidr_range
  }
  log_config {
    aggregation_interval = "INTERVAL_10_MIN"
    flow_sampling        = 0.5
    metadata             = "INCLUDE_ALL_METADATA"
  }
}
