provider "google" {
  project = "sphereinc-infrastructure-tf"
  region  = "us-central1"
  zone    = "us-central1-c"
}
module "gcp-tf-state" {
  source 	= "../global/gcp/google-storage"
  storage-name = "tf-state"
  force-destroy = "true"
  location = "US-WEST1"
  storage-class = "STANDARD"
  versioning = "true"
}
