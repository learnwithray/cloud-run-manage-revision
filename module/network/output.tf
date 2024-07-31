output "network_id" {
  description = "The ID of the VPC network"
  value       = google_compute_network.cloud-run-network.id
}

output "subnetwork_id" {
  description = "The ID of the subnetwork"
  value       = google_compute_subnetwork.cloud-run-subnetwork.id
}
