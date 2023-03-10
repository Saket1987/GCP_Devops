resource "google_compute_instance" "vm-from-tf" {
  name = "vm-from-tf"
  machine_type = "n1-standard-1"

  boot_disk {
    initialize_params {
      image = "debian-11-bullseye-v20220120"
    }
  }

  network_interface {
    network = "default"
    subnetwork = "default"
  }

}
