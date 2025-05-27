# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network
resource "google_compute_network" "andor" {
  name                            = "andor"
  routing_mode                    = "REGIONAL"
  auto_create_subnetworks         = false
  mtu                             = 1460
  delete_default_routes_on_create = false
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_subnetwork
resource "google_compute_subnetwork" "andor-hginternal" {
  name                     = "andor-hginternal"
  ip_cidr_range            = "10.255.2.0/24"
  region                   = "us-central1"
  network                  = google_compute_network.andor.id
  private_ip_google_access = true

}

resource "google_compute_subnetwork" "andor-tokyo1" {
  name                     = "andor-tokyo1"
  ip_cidr_range            = "10.255.22.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.andor.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "andor-tokyo2" {
  name                     = "andor-tokyo2"
  ip_cidr_range            = "10.255.23.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.andor.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "andor-tokyo3" {
  name                     = "andor-tokyo3"
  ip_cidr_range            = "10.255.24.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.andor.id
  private_ip_google_access = true
}


resource "google_compute_subnetwork" "andor-sanpaulo1" {
  name                     = "andor-sanpaulo1"
  ip_cidr_range            = "10.255.48.0/24"
  region                   = "southamerica-east1"
  network                  = google_compute_network.andor.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "andor-belgium1" {
  name                     = "andor-belgium1"
  ip_cidr_range            = "10.255.96.0/24"
  region                   = "europe-west1"
  network                  = google_compute_network.andor.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "andor-belgium2" {
  name                     = "andor-belgium2"
  ip_cidr_range            = "10.255.97.0/24"
  region                   = "europe-west1"
  network                  = google_compute_network.andor.id
  private_ip_google_access = true
}



