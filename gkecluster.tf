
resource "google_container_cluster" "gke-cluster" {
  name               = "${var.name}"
  network            = "${var.network}"
  zone               = "${var.zone}"
  initial_node_count = 3
}