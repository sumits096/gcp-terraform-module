# output "target-email" {
#   value = data.google_client_openid_userinfo.sa_user.email
# }

output "vpc_ip_address" {
  value = module.connector_vpc_network.vpc_ip_address
}
