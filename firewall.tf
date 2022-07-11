resource "google_compute_firewall" "my_firewall" {
  project     = var.project_id
  name        = "my-firewall"
  network     = var.my-vpc
  direction = "INGRESS"
  allow {
    protocol  = "tcp"
    ports     = ["9090", "3000", "1000-2000"]
  }
depends_on = [
  google_compute_network.my_vpc
]

  source_tags = ["test-foo"]
  target_tags = ["dev-env"]
}
resource "google_compute_firewall" "my_firewall_1" {
  source_ranges = [ "35.235.240.0/20" ]
  project     = var.project_id
  name = "my-firewall-1"
  network = var.my-vpc
  direction = "INGRESS"
  depends_on = [
    google_compute_network.my_vpc
  ]
  allow {
    protocol  = "tcp"
    ports     = ["22", "3389"]
  }
target_tags = ["dev-env"]
}

resource "google_compute_firewall" "my_firewall_2" {
  name = "my-firewall-2"
  network = var.my-vpc
  project = var.project_id
  direction = "INGRESS"
  source_ranges = [ "117.0.0.0/8","49.0.0.0/8", "49.207.0.0/16" ]
  depends_on = [
    google_compute_network.my_vpc
  ]
  allow {
    protocol  = "tcp"
    ports     = ["0-65535"]
  }
  allow {
    protocol = "udp"
    ports     = ["0-65535"]
  }
}
resource "google_compute_firewall" "my_firewall_3" {
  name = "my-firewall-3"
  network = var.my-vpc
  project = var.project_id
  direction = "INGRESS"
  source_ranges = [ "117.0.0.0/8","49.0.0.0/8", "49.207.0.0/16" ]
  depends_on = [
    google_compute_network.my_vpc
  ]
  allow {
    protocol  = "icmp"
    //ports =  ["65535"]
  }
  // ref: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_firewall
 // For INGRESS traffic, it is NOT supported to specify destinationRanges;
  // For INGRESS traffic, one of "source_ranges", "source_tags" or "source_service_accounts" is required
  // For EGRESS traffic, it is NOT supported to specify "source_ranges" OR "source_tags"
}
resource "google_compute_firewall" "my_firewall_4" {
  name = "my-firewall-4"
  network = var.my-vpc
  project = var.project_id
  direction = "EGRESS"
  depends_on = [
    google_compute_network.my_vpc
  ]
  allow {
    protocol  = "tcp"
    
  }
  allow {
    protocol  = "udp"
  }
  
}