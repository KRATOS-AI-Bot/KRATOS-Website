
variable "aws_region" {
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  type        = string
}

variable "website_index" {
  type        = string
  default     = "index.html"
}

variable "website_error" {
  type        = string
  default     = "error.html"
}
