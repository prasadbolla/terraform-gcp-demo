resource "google_compute_instance" "demo" {
  name         = "terraform-demo-vm"
  machine_type = "e2-small"
  allow_stopping_for_update = true
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    network = "default"

    access_config {}
  }
}
