// Terraform plugin for creating random IDs
resource "random_id" "bucket_prefix" {
  byte_length = 8
}

// Terraform plugin for creating gcp storage
resource "google_storage_bucket" "default" {
  name          = "${var.storage-name}-${random_id.bucket_prefix.hex}"
  force_destroy = "${var.force-destroy}"
  location      = "${var.location}"
  storage_class = "${var.storage-class}"
  versioning {
    enabled = "${var.versioning}"
  }
}
