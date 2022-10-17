resource "google_cloudbuild_trigger" "terraform-trigger_on_pubsub" {
  name        = var.build_trigger_name
  description = var.build_trigger_description

  source_to_build {
    uri       = "https://github.com/${var.version_control_owner}/${var.version_control_repo_name}"
    ref       = "refs/heads/${var.version_control_branch_name}"
    repo_type = "GITHUB"
  }

  git_file_source {
    path      = var.build_trigger_filename
    uri       = "https://github.com/${var.version_control_owner}/${var.version_control_repo_name}"
    revision  = "refs/heads/${var.version_control_branch_name}"
    repo_type = "GITHUB"
  }

  pubsub_config {
    topic = var.pubsub_topic_id
  }

  substitutions = {
    _ENVIRONMENT              = var.environment
    _REGION                   = var.cloud_run_region
    _IMAGE_NAME               = var.build_image
    _SERVICE_NAME             = var.build_service
    _PUBSUB_TOPIC             = var.pubsub_topic_name
    _PUBSUB_MESSAGE           = var.pubsub_message
    _PROJECT_ID               = var.env_project_id
    _VPC_CONNECTOR            = var.vpc_connector
    _GIT_USERNAME             = var.version_control_username
    _GIT_USEREMAIL            = var.version_control_useremail
    _GIT_REPO_TESTS           = "https://${var.version_control_owner}:${var.version_control_token}@github.com/${var.version_control_owner}/${var.version_control_repo_name_playwright}.git"
    _EXECUTE_AUTOMATION_TESTS = var.execute_automation_tests
    _BUCKET_NAME              = var.bucket_name
  }
}

