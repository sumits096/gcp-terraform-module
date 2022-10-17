#----------------------------------------------
# Create networking
#----------------------------------------------
module "connector_vpc_network" {
  source                      = "./modules/vpc-network"
  service_account_credentials = var.service_account_credentials
  project_id                  = var.project_id
  region                      = var.region
  zone                        = var.zone
  network_name                = var.network_name
  auto_create_subnetworks     = var.auto_create_subnetworks
  firewall_rule_name          = var.firewall_rule_name
  vpc_subnetworks             = var.vpc_subnetworks
  network_region              = var.cloud_run_region
  vpc_access_name             = var.vpc_access_name
  compute_address_name        = var.compute_address_name
  router_name                 = var.router_name
  router_nat_name             = var.router_nat_name
}
