variable "storage-name" {
description = "Storage name + a unique identifier is added automatically."
type = string
}

variable "force-destroy" {
description = "Storage protection from accidental deletion. If true the store cannot be deleted"
type = bool
}

variable  "location" {
description = "https://cloud.google.com/storage/docs/locations"
type = string
//Priority:
//Single: US-WEST1,EUROPE-WEST1 
//Duo: US-CENTRAL1, EUROPE-WEST1
//Multi: US, EU, ASIA
}


variable "storage-class" {
description = "Supported values include: STANDARD, MULTI_REGIONAL, REGIONAL, NEARLINE, COLDLINE, ARCHIVE"
type = string
}

variable "versioning" {
description = "The bucket's Versioning configuration"
type = bool
}
