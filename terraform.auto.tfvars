#----------------------------------------------
# GCP infrastructure
# GCP account variables
#----------------------------------------------
service_account_credentials = ""
project_id                  = "connectors-playground"
service_account_default     = ""
service_account_cloudbuild  = ""
region                      = "us-central1"
zone                        = "us-central1-a"
cloud_run_region            = "us-central1"

#----------------------------------------------
# Service Account variables
#----------------------------------------------
account_id   = "cloud-run-service-account"
display_name = "Cloud run-task service account"

#----------------------------------------------
# Service Account iam member roles
#----------------------------------------------
service_account_email = ""
member_roles = [
  "roles/run.admin",
  "roles/cloudtasks.enqueuer",
  "roles/iam.serviceAccountUser"
]

#----------------------------------------------
# Cloud task queue variable
#----------------------------------------------
task_name_cxm                 = "ovation-webhook-queue"
task_name_crm                 = "msdynamics-webhook-queue"
task_location                 = "us-central1"
max_concurrent_dispatches_cxm = 3
max_concurrent_dispatches_crm = 3
max_dispatches_per_second_cxm = 2
max_dispatches_per_second_crm = 2
max_attempts                  = 5
max_retry_duration            = "4s"
max_backoff                   = "3s"
min_backoff                   = "2s"
max_doublings                 = 1
sampling_ratio                = 0.9

#----------------------------------------------
# Network peering variables
#----------------------------------------------
# VPC network variables
network_name            = "connector-msdynamics-vpc-test"
auto_create_subnetworks = false
firewall_rule_name      = "allow-tcp-icmp"
vpc_subnetworks = {
  "connector-msdynamics-subnetwork-test" : { "ip_cidr_range" : "172.16.2.0/28", "region" : "us-central1" }
}
vpc_access_name      = "msdynamics-cloudrun-conn"
compute_address_name = "msdynamics-cloudrun-static-ip-addr"
router_name          = "msdynamics-router"
router_nat_name      = "msdynamics-nat-gateway"

# VPC network peering variables
gcp_peering_name   = "connector-msdynamics-vpc-mongodb"
atlas_peering_name = "connector-msdynamics-vpc-gcp"
atlas_cidr_block   = "192.168.192.0/8"

#----------------------------------------------
# Aure infrastructure
# Aure account variables
#----------------------------------------------
azure_client_id     = "ba9a9510-8f7d-46f8-a229-8134d7e0cab7"
azure_client_secret = "lqr8Q~mCCjXkKOEFbcBuReIGlV-a3BIdkxORBcho"
azure_tenant_id     = "99c32bdd-18fa-4f18-9dc8-083e6d55e848"

# Azure application variables
azure_app_display_name = "ms-dynamics-test-app"
redirect_uris          = ["https://localhost"]
