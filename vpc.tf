

resource "google_compute_subnetwork" "my_subnet" {
  name          = var.my-subnet
  ip_cidr_range = "10.2.0.0/16"
  region        = var.reg
  network       = google_compute_network.my_vpc.self_link
  depends_on = [
    google_compute_network.my_vpc
  ]
  /*secondary_ip_range {
    range_name    = "tf-test-secondary-range-update1"
    ip_cidr_range = "192.168.10.0/24"
  }*/
}
resource "google_compute_network" "my_vpc" {
  name = var.my-vpc
  project = var.project_id
  mtu = 1460
  auto_create_subnetworks = false
}