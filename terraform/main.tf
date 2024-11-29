provider "google" {
  credentials = file("<path-to-service-account-key>.json")
  project     = "<gcp-project-id>"
  region      = "us-central1"
}

resource "google_compute_instance" "runner" {
  name         = "github-runner"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      size  = 50
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata_startup_script = file("bootstrap.sh")

  tags = ["github-runner"]
}

output "instance_ip" {
  value = google_compute_instance.runner.network_interface[0].access_config[0].nat_ip
}
