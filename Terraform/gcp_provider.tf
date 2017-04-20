// Configure the Google Cloud provider
provider "google" {
    credentials     = "${file("account.json")}"
    project         = "${var.project_id}"
    region          = "${var.region}"
    billing_acount  = "${var.billing_id}"
    org_id          = "${var.org_id}"
}
