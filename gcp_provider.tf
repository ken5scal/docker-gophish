// Configure the Google Cloud provider
provider "google" {
    credentials = "${file("account.json")}"
    project     = "apt-mail-training"
    region      = "asia-northeast"
}

