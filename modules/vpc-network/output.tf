output "vpc_self_link" {
  value = google_compute_network.vpc_network.self_link
}

output "vpc_ip_address" {
  value = google_compute_address.gcp_compute_address.address
}
