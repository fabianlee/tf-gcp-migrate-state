

resource "google_compute_instance" "default" {
  name         = "test123"
  project      = var.project_id
  machine_type = "e2-standard-2"
  zone         = "us-central1-a"

  # ability to append more tags using variable
  tags = concat(["foo", "bar"], var.additional_tags)

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi123 > /test.txt"

}
