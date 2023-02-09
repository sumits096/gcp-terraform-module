resource "google_project_iam_member" "service_account_member_role" {
  project  = var.project_id
  for_each = toset(var.member_roles)
  role     = each.key
  member   = "serviceAccount:${var.service_account_email}"
}
