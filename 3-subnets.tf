# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "hginternal" {
  name                     = "hginternal"
  ip_cidr_range            = "10.255.2.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "tokyo1" {
  name                     = "tokyo1"
  ip_cidr_range            = "10.255.22.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "tokyo2" {
  name                     = "tokyo2"
  ip_cidr_range            = "10.255.23.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "tokyo3" {
  name                     = "tokyo3"
  ip_cidr_range            = "10.255.24.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}


resource "google_compute_subnetwork" "sanpaulo1" {
  name                     = "sanpaulo1"
  ip_cidr_range            = "10.255.48.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "belgium1" {
  name                     = "belgium1"
  ip_cidr_range            = "10.255.96.0/24"
  region                   = "europe-west1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "belgium2" {
  name                     = "belgium2"
  ip_cidr_range            = "10.255.97.0/24"
  region                   = "europe-west1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}