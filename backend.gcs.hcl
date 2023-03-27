terraform {
  backend "gcs" {
    prefix = "tfstate"
    credentials = "serviceaccount.json"
  }
}
