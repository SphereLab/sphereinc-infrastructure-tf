terraform {
 backend "gcs" {
   bucket  = "tf-state-6de5c1b367e4f044"
   prefix  = "terraform/state"
 }
}
