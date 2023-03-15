data "azuread_service_principal" "msgraph" {
  display_name = "Microsoft Graph"
}

data "azuread_service_principal" "dcrm" {
  application_id = "00000007-0000-0000-c000-000000000000" # client id of Microsoft Dynamics crm service principal
}
