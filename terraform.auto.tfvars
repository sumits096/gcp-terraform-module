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

# #----------------------------------------------
# # Aure infrastructure
# # Aure account variables
# #----------------------------------------------
# azure_client_id     = ""
# azure_client_secret = ""
# azure_tenant_id     = ""

# # Azure application variables
# azure_app_display_name = "ms-dynamics-test-app"
# redirect_uris          = ["https://localhost:8081/", "https://localhost:8082/"]

#----------------------------------------------
# Azure infrastructure
# Azure account variables
#----------------------------------------------
azuread_client_id     = ""
azuread_client_secret = ""
azuread_tenant_id     = ""

# Azure application variables
azuread_app_secret_display_name   = "client-secret"
azuread_app_secret_end_date       = "2024-01-01T01:00:00Z"
azuread_app_display_name_nonprod  = "msdynamics-application-nonprod"
azuread_app_redirect_uris_nonprod = ["https://connector-msdynamics-ui-lp6zhuz2fa-uc.a.run.app/external-login/callback", "https://connector-msdynamics-ui-znn4wv6gea-uc.a.run.app/external-login/callback"]

# Azure application variables for prod
azuread_app_display_name_prod  = "msdynamics-application"
azuread_app_redirect_uris_prod = ["https://connector-msdynamics-ui-pwgavvro5q-uc.a.run.app/external-login/callback"]
