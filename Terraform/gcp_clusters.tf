resource "google_container_cluster" "primary" {
    name    = "gophish-cluster"
    zone    = "${var.zone}"
    initial_node_count = 3

    additional_zones = [
        "asia-northeast1-b",
        "asia-northeast1-c",
    ]

    node_config {
        oauth_scopes = [
        "https://www.googleapis.com/auth/compute",
        "https://www.googleapis.com/auth/devstorage.read_only",
        "https://www.googleapis.com/auth/logging.write",
        "https://www.googleapis.com/auth/monitoring",
        ]
    }
}
