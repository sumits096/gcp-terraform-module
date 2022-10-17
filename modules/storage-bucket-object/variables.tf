#----------------------------------------------
# GCP account variables
#----------------------------------------------
variable "directory_name" {
  type        = string
  description = "location name"
  default     = "US"
}

variable "content" {
  type        = string
  description = "Not really a directory, but it's empty."
  default     = "Not really a directory, but it's empty."
}

variable "bucket_name" {
  type        = string
  description = "storage bucket name"
  default     = "connector-bucket"
}
