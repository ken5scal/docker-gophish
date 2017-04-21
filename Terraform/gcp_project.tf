resource "google_project" "apt-mail-training" {
    project_id  = "${var.project_id}"
    org_id      = "${var.org_id}"
    billing_account = "${var.billing_id}"
    name            = "${var.project_id}"
}

resource "google_project_services" "apt-mail-training" {
    project = "${google_project.apt-mail-training.project_id}"
    services = [
        "cloudresourcemanager.googleapis.com",
        "compute-component.googleapis.com",
    ]
}
