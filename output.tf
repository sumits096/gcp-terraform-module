# output "target-email" {
#   value = data.google_client_openid_userinfo.sa_user.email
# }

# output "vpc_ip_address" {
#   value = module.connector_vpc_network.vpc_ip_address
# }

# output "staging_vpc_ip_address" {
#   value = module.connector_staging_vpc_network.vpc_ip_address
# }

# output "preprod_vpc_ip_address" {
#   value = module.connector_preprod_vpc_network.vpc_ip_address
# }

# output "prod_vpc_ip_address" {
#   value = module.connector_prod_vpc_network.vpc_ip_address
# }

data "google_service_account_key" "account_key" {
  name            = "projects/${var.project_id}/serviceAccounts/boomtown-connector-sa@${var.project_id}.iam.gserviceaccount.com"
  public_key_type = "TYPE_X509_PEM_FILE"
}

output "my_private_key" {
  value = data.google_service_account_key.account_key.public_key
}
