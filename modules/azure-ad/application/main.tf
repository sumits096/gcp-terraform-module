# Create the Azure Application
resource "azuread_application" "main" {
  count                   = 0
  display_name            = var.azuread_app_display_name
  group_membership_claims = ["ApplicationGroup"]
  sign_in_audience        = "AzureADMultipleOrgs"

  # Set the optinal claims to get groups names instead of GUID's in the access token.
  optional_claims {
    access_token {
      additional_properties = ["sam_account_name"]
      essential             = true
      name                  = "groups"
    }

    id_token {
      additional_properties = ["sam_account_name"]
      essential             = true
      name                  = "groups"
    }
  }

  # Set the redirect URI's, if any.
  web {
    redirect_uris = var.azuread_app_redirect_uris
  }

  api {
    mapped_claims_enabled          = true
    requested_access_token_version = 2

    oauth2_permission_scope {
      admin_consent_description  = "Access the email as the user"
      admin_consent_display_name = "Access"
      enabled                    = true
      id                         = "652390e4-393a-48de-9484-05f9b1212954"
      type                       = "User"
      user_consent_description   = "Access the email as the user"
      user_consent_display_name  = "Access"
      value                      = "IMAP.AccessAsUser.All"
    }

    oauth2_permission_scope {
      admin_consent_description  = "Maintain access to data"
      admin_consent_display_name = "Maintain"
      enabled                    = true
      id                         = "7427e0e9-2fba-42fe-b0c0-848c9e6a8182"
      type                       = "User"
      user_consent_description   = "Maintain access to data"
      user_consent_display_name  = "Maintain"
      value                      = "offline_access"
    }
  }

  # Set the defalt User.Read API permissions.
  required_resource_access {
    resource_app_id = data.azuread_service_principal.msgraph.application_id # Microsoft Graph

    resource_access {
      id   = data.azuread_service_principal.msgraph.oauth2_permission_scope_ids["User.Read"]
      type = "Scope"
    }
    resource_access {
      id   = data.azuread_service_principal.msgraph.oauth2_permission_scope_ids["IMAP.AccessAsUser.All"]
      type = "Scope"
    }

    resource_access {
      id   = data.azuread_service_principal.msgraph.oauth2_permission_scope_ids["offline_access"]
      type = "Scope"
    }
  }

  # Set the defalt User Impersonation API permissions.
  required_resource_access {
    resource_app_id = data.azuread_service_principal.dcrm.application_id
    resource_access {
      id   = data.azuread_service_principal.dcrm.oauth2_permission_scope_ids["user_impersonation"]
      type = "Scope"
    }
  }
}

# Craete client secret for azure app
resource "azuread_application_password" "secret" {
  count                 = 0
  display_name          = var.azuread_app_secret_display_name
  application_object_id = azuread_application.main[count.index].id
  end_date              = var.azuread_app_secret_end_date
}

# Create a Service Principal for the App Registration (required)
resource "azuread_service_principal" "user" {
  count          = 0
  application_id = azuread_application.main[count.index].application_id
}

# Gives admin consent on the User.Read permission.
resource "azuread_service_principal_delegated_permission_grant" "main_msgraph" {
  count                                = 0
  service_principal_object_id          = azuread_service_principal.user[count.index].object_id
  resource_service_principal_object_id = data.azuread_service_principal.msgraph.object_id
  claim_values                         = ["IMAP.AccessAsUser.All", "offline_access", "User.Read"]
}

# Gives admin consent on the user_impersonation permission for d365.
resource "azuread_service_principal_delegated_permission_grant" "main_dcrm" {
  count                                = 0
  service_principal_object_id          = azuread_service_principal.user[count.index].object_id
  resource_service_principal_object_id = data.azuread_service_principal.dcrm.object_id
  claim_values                         = ["user_impersonation"]
}
