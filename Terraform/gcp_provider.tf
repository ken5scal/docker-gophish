// Configure the Google Cloud provider
provider "google" {
    credentials     = "${file("account.json")}"
    project         = "apt-mail-training"
    region          = "asia-northeast"
    billing_acount  = "${var.billing_id}"
    org_id          = "${var.org_id}"
}

