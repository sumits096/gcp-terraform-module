#----------------------------------------------
# GCP infrastructure
# GCP account variables
#----------------------------------------------
service_account_credentials = ""
project_id                  = "connectors-playground"
region                      = "us-central1"
zone                        = "us-central1-a"
cloud_run_region            = "us-central1"

#----------------------------------------------
# Network peering variables
#----------------------------------------------
# VPC network variables
network_name            = "connector-msdynamics-vpc"
auto_create_subnetworks = false
firewall_rule_name      = "allow-tcp-icmp"
vpc_subnetworks = {
  "connector-msdynamics-subnetwork" : { "ip_cidr_range" : "172.16.1.0/28", "region" : "us-central1" }
}
vpc_access_name      = "msdynamics-cloudrun-conn"
compute_address_name = "msdynamics-cloudrun-static-ip-addr"
router_name          = "msdynamics-router"
router_nat_name      = "msdynamics-nat-gateway"

# VPC network peering variables
gcp_peering_name   = "connector-msdynamics-vpc-mongodb"
atlas_peering_name = "connector-msdynamics-vpc-gcp"
atlas_cidr_block   = "192.168.192.0/8"
