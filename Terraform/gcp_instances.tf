resource "google_compute_instance" "default" {
    name            = "default"
    machine_type    = "n1-standard-1" //This is Default
    zone            = "asia-northeast1-a"
    description     = "apt-mail-training"
    tags            = ["internal-use-only", "gophish", "go"]
    disk {
        image = "debian-cloud/debian-8"
    }

    network_interface {
        network = "default"
    }
}
