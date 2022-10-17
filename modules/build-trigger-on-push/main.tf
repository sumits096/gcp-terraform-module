resource "google_cloudbuild_trigger" "terraform-trigger_on_push" {
  name        = var.build_trigger_name
  description = var.build_trigger_description
  disabled    = var.build_trigger_status
  filename    = var.build_trigger_filename

  github {
    owner = var.version_control_owner
    name  = var.version_control_repo_name
    push {
      branch = var.version_control_branch_name
    }
  }

  substitutions = {
    _IMAGE_NAME           = var.build_image
    _EXECUTE_QUALITY_GATE = var.execute_quality_gate
    _SONAR_TOKEN          = var.sonar_token
    _SONAR_URL            = var.sonar_url
    _PUBSUB_TOPIC         = var.pubsub_topic_name
    _PUBSUB_MESSAGE       = var.pubsub_message
  }
}
