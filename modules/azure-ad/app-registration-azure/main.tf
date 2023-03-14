# Below data resources gets "Microsoft Graph" data.
data "azuread_application_published_app_ids" "well_known" {}

data "azuread_service_principal" "msgraph" {
  application_id = data.azuread_application_published_app_ids.well_known.result.MicrosoftGraph
}

data "azuread_service_principal" "graph-api" {
  display_name = "Microsoft Graph"
}

data "azuread_service_principal" "d365bc" {
  display_name = "Dynamics 365 Business Central"
}

# Create the Azure Application
resource "azuread_application" "main" {
  display_name            = var.azure_app_display_name
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
    redirect_uris = var.redirect_uris
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

  oauth2_permissions {
    admin_consent_description  = "Allow the application to access example on behalf of the signed-in user."
    admin_consent_display_name = "Access example"
    is_enabled                 = true
    type                       = "User"
    user_consent_description   = "Allow the application to access example on your behalf."
    user_consent_display_name  = "Access example"
    value                      = "user_impersonation"
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

}

# Generete application client secrete key
resource "azuread_application_password" "secret" {
  display_name          = "secret-key"
  application_object_id = azuread_application.main.id
  end_date              = "2030-01-01T01:00:00Z"
}

# Create a Service Principal for the App Registration (required)
resource "azuread_service_principal" "user" {
  application_id = azuread_application.main.application_id
}

# Gives admin consent on the User.Read permission.
#resource "azuread_service_principal_delegated_permission_grant" "main" {
#  service_principal_object_id          = azuread_service_principal.user.object_id
#  resource_service_principal_object_id = data.azuread_service_principal.msgraph.object_id
#  claim_values                         = ["IMAP.AccessAsUser.All", "offline_access", "User.Read"]
#}

# Grant admin concent permission
resource "azuread_application_oauth2_permission" "admin-concent" {
  application_object_id      = azuread_application.main.id
  admin_consent_description  = "Administer the application"
  admin_consent_display_name = "Administer"
  is_enabled                 = true
  type                       = "User"
  user_consent_description   = "Administer the application"
  user_consent_display_name  = "Administer"
  value                      = "administer"
}
