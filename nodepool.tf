
resource "google_container_node_pool" "extra-pool" {
  name               = "${var.node_pool_name}"
  zone               = "${var.zone}"
  cluster            = "${google_container_cluster.gke-cluster.name}"
  initial_node_count = 3
}