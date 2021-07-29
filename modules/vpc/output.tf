output "vpc_network_id" {
    value       = google_compute_network.vpc_network.id
    description = "The identifier for the VPC network"
}