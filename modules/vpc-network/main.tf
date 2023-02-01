# VPC network
resource "google_compute_network" "vpc_network" {
  provider                = google-beta
  name                    = var.network_name
  auto_create_subnetworks = var.auto_create_subnetworks
  mtu                     = 1460
}

# VPC subnet
resource "google_compute_subnetwork" "vpc_subnetwork" {
  for_each      = var.vpc_subnetworks
  provider      = google-beta
  name          = each.key
  ip_cidr_range = each.value.ip_cidr_range
  region        = each.value.region
  network       = google_compute_network.vpc_network.id
}

# VPC firewall rule
resource "google_compute_firewall" "vpc_network_allow" {
  for_each = var.vpc_subnetworks
  name     = var.firewall_rule_name
  network  = google_compute_network.vpc_network.self_link
  allow {
    protocol = "tcp"
    ports    = ["22", "80", "3389", "8080"]
  }
  allow {
    protocol = "icmp"
  }
  source_ranges = [google_compute_subnetwork.vpc_subnetwork[each.key].ip_cidr_range]
  source_tags   = [var.network_name]
}

#  Serverless VPC Access connector.
resource "google_project_service" "vpc_access_service" {
  provider           = google-beta
  service            = "vpcaccess.googleapis.com"
  disable_on_destroy = false
}

resource "google_vpc_access_connector" "vpc_access_connector" {
  for_each = var.vpc_subnetworks
  provider = google-beta
  name     = var.vpc_access_name
  region   = var.network_region

  subnet {
    name = google_compute_subnetwork.vpc_subnetwork[each.key].name
  }

  # Wait for VPC API enablement
  # before creating this resource
  depends_on = [
    google_project_service.vpc_access_service
  ]
}

# Cloud Router
resource "google_compute_router" "router" {
  name     = var.router_name
  provider = google-beta
  region   = var.network_region
  network  = google_compute_network.vpc_network.id
}

# Reserve a static IP address
resource "google_compute_address" "gcp_compute_address" {
  provider = google-beta
  name     = var.compute_address_name
  region   = var.network_region
}

# Cloud NAT gateway configuration
resource "google_compute_router_nat" "router_nat" {
  for_each = var.vpc_subnetworks
  provider = google-beta
  name     = var.router_nat_name
  region   = var.network_region
  router   = google_compute_router.router.name

  nat_ip_allocate_option = "MANUAL_ONLY"
  nat_ips                = [google_compute_address.gcp_compute_address.self_link]

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name                    = google_compute_subnetwork.vpc_subnetwork[each.key].id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
}
