resource "google_cloudbuild_trigger" "terraform-trigger_on_pull" {
  name        = var.build_trigger_name
  description = var.build_trigger_description
  disabled    = var.build_trigger_status
  filename    = var.build_trigger_filename

  github {
    owner = var.version_control_owner
    name  = var.version_control_repo_name
    pull_request {
      branch = var.version_control_branch_name
    }
  }
}
