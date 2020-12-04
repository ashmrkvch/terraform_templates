resource "google_container_cluster" "primary" {
  name               = "test"
  location           = "us-central1-c"
  initial_node_count = 3

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }
  node_config {
    machine_type = "e2-medium"
    oauth_scopes = [
      "https://www.googleapis.com/auth/logging.write",
      "https://www.googleapis.com/auth/monitoring",
    ]

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      app = "test"
    }

    tags = ["app", "test"]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
}