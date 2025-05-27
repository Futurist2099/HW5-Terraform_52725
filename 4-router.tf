# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "iowarouter" {
  name    = "iowarouter"
  region  = "us-central1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "tokyorouter" {
  name    = "tokyorouter"
  region  = "asia-northeast1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "belgiumrouter" {
  name    = "belgiumrouter"
  region  = "europe-west1"
  network = google_compute_network.main.id
}

resource "google_compute_router" "saopaulorouter" {
  name    = "saopaulorouter"
  region  = "southamerica-east1"
  network = google_compute_network.main.id
}