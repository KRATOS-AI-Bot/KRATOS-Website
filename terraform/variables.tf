
variable "aws_region" {
  type        = string
  default     = "ap-south-1"
  description = "AWS Region"
}

variable "bucket_name" {
  type        = string
  default     = "kratos-home-12345"
  description = "S3 Bucket Name"
}

variable "index_document" {
  type        = string
  default     = "index.html"
  description = "Index Document"
}

variable "error_document" {
  type        = string
  default     = "error.html"
  description = "Error Document"
}
