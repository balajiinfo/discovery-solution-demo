resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone

  labels = {
    env = "dev"
    app = "demo"
  }

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
      size  = var.disk_size
    }
  }

  network_interface {
    network = "default"

    access_config {
      # External IP enabled
    }
  }

  metadata = {
    enable-oslogin = "TRUE"
  }

  tags = ["ssh"]
}

