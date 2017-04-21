resource "google_container_cluster" "primary" {
    name    = "gophish-cluster"
    zone    = "${var.zone}"
    initial_node_count = 2

    additional_zones = [
        "asia-northeast1-b",
        "asia-northeast1-c",
    ]
}
