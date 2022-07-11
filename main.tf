resource "google_compute_instance" "webserver" {
  #create 2 instances, you can edit this number for more instances
  //count = 2
  //name         = "vm-${count.index+1}"
 labels = {
   "env" = "testing"
 }
  name = "my1"
  machine_type = "e2-small"
 tags = [ "dev-env" ]
 depends_on = [
   google_compute_firewall.my_firewall
 ]
  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    } 
  }
  metadata_startup_script = "${file("script.sh")}"
  network_interface {
     //network = "default"
    network = google_compute_network.my_vpc.id
    subnetwork = google_compute_subnetwork.my_subnet.self_link
    access_config {
       
      //exter_IP
    }
  }
}