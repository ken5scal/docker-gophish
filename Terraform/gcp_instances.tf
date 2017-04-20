resource "google_compute_instance" "default" {
    name            = "default"
    machine_type    = "n1-standard-1"
    zone            = "asia-northeast1-b"
    description     = "apt-mail-training"
    tags            = ["internal-use-only", "gophish", "go"]
    disk {
        image = "debian-cloud/debian-8"
    }

    disk {
        type    = "local-ssd"
        scratch = true
    }

    network_interface {
        network = "default"
    }
}
