resource "google_compute_instance" "default" {
  name         = "main-vm1"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  ##tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
        }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.hginternal.name

    access_config {
      // Ephemeral public IP
    }
  }

   metadata_startup_script = file("./startup1.sh")
}