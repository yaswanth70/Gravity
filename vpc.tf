resource "google_compute_network" "vpc_network" {
  name = "my-vpc"
}

resource "google_compute_subnetwork" "public_subnet" {
  name          = "public-subnet"
  ip_cidr_range = "10.0.1.0/24"
  network       = google_compute_network.vpc_network.id
}

resource "google_compute_subnetwork" "private_subnet" {
  name          = "private-subnet"
  ip_cidr_range = "10.0.2.0/24"
  network       = google_compute_network.vpc_network.id
}
resource "google_compute_instance" "web_server" {
  name         = "web-server"
  machine_type = "e2-medium"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network       = google_compute_network.vpc_network.id
    subnetwork    = google_compute_subnetwork.public_subnet.id
    access_config {
    }
  }

  metadata_startup_script = <<-EOT
    #!/bin/bash
    apt-get update
    apt-get install -y nginx
    systemctl start nginx
  EOT
}
