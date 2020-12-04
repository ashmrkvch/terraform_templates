provider "google" {

  credentials = file("gcp.json")

  project = "imposing-pipe-293809"
  region  = "us-central1"
  zone    = "us-central1-c"
}