// Configure the Google Cloud provider
provider "google" {
    credentials = "${file("account.json")}"
    project     = "apt-mail-training"
    region      = "asia-northeast"
}

resource "google_compute_instance" "aptafdasfas" {
    name = "default"
    machine_type = "n1-standard-1" //This is Default
    zone = "asia-northeast1-a"
    
    disk {

    }

    network_interface {
        network = "default"
    }
}
