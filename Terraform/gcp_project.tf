resource "google_project" "apt-mail-training" {
    project_id  = "${var.project_id}"
    org_id      = "${var.org_id}"
    billing_account = "${var.billing_id}"
    name            = "${var.project_id}"
}
