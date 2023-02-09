#----------------------------------------------
# Create cloud task queue permission
#----------------------------------------------
module "connector_cloud_task_queue_permission" {
  source                      = "./modules/cloud-task-permission"
  service_account_credentials = var.service_account_credentials
  project_id                  = var.project_id
  region                      = var.region
  zone                        = var.zone
  cloud_tasks_queue_name      = var.task_name_cxm
}

module "connector_cloud_task_queue_permission_ms" {
  source                      = "./modules/cloud-task-permission"
  service_account_credentials = var.service_account_credentials
  project_id                  = var.project_id
  region                      = var.region
  zone                        = var.zone
  cloud_tasks_queue_name      = var.task_name_crm
}

module "connector_cloud_run_service_account" {
  source                      = "./modules/cloud-service-account"
  service_account_credentials = var.service_account_credentials
  project_id                  = var.project_id
  region                      = var.region
  zone                        = var.zone
  account_id                  = var.account_id
  display_name                = var.display_name
}

module "connector_cloud_run_service_account_iam" {
  source                      = "./modules/service-account-iam-member"
  service_account_credentials = var.service_account_credentials
  project_id                  = var.project_id
  region                      = var.region
  zone                        = var.zone
  service_account_email       = module.connector_cloud_run_service_account.sa_email
  member_roles                = var.member_roles
}

#----------------------------------------------
# Create cloud task queue
#----------------------------------------------
module "connector_staging_cloud_task" {
  source                      = "./modules/cloud-task-queue"
  service_account_credentials = var.service_account_credentials
  project_id                  = var.project_id
  region                      = var.region
  zone                        = var.zone
  task_name                   = var.task_name_cxm
  task_location               = var.task_location
  max_concurrent_dispatches   = var.max_concurrent_dispatches_cxm
  max_dispatches_per_second   = var.max_dispatches_per_second_cxm
  max_attempts                = var.max_attempts
  max_retry_duration          = var.max_retry_duration
  max_backoff                 = var.max_backoff
  min_backoff                 = var.min_backoff
  max_doublings               = var.max_doublings
  sampling_ratio              = var.sampling_ratio
}

module "connector_msdynamics_cloud_task" {
  source                      = "./modules/cloud-task-queue"
  service_account_credentials = var.service_account_credentials
  project_id                  = var.project_id
  region                      = var.region
  zone                        = var.zone
  task_name                   = var.task_name_crm
  task_location               = var.task_location
  max_concurrent_dispatches   = var.max_concurrent_dispatches_crm
  max_dispatches_per_second   = var.max_dispatches_per_second_crm
  max_attempts                = var.max_attempts
  max_retry_duration          = var.max_retry_duration
  max_backoff                 = var.max_backoff
  min_backoff                 = var.min_backoff
  max_doublings               = var.max_doublings
  sampling_ratio              = var.sampling_ratio
}

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
