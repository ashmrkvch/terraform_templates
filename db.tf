resource "google_sql_database_instance" "master" {
  name             = "master-instance"
  database_version = "MYSQL_5_7"
  region           = "us-central1"

  settings {
    # Second-generation instance tiers are based on the machine
    # type. See argument reference below.
    tier = "db-f1-micro"
  }
}

resource "google_sql_database" "default" {
  name       = "test"
  project    = "imposing-pipe-293809"
  instance   = google_sql_database_instance.master.name
}