resource "google_container_cluster" "primary" {
    name    = "gophish-cluster"
    zone    = "${var.zone}"
    initial_node_count = 1

    additional_zones = [
        "asia-northeast1-b",
        "asia-northeast1-c",
    ]

    master_auth {
        // TODO: Change Later
        username = "hoge.hoge"
        password = "fuga.fuga"
    }

    node_config {
        oauth_scopes = [
        "https://www.googleapis.com/auth/compute",
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
        ]
    }
}
