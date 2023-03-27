terraform {

  # leave this uncommented to use gcs remote state
  backend "gcs" {
    prefix = "tfstate"
    credentials = "serviceaccount.json"
  }
}
