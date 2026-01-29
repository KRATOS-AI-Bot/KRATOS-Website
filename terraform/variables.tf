
variable "aws_region" {
  type        = string
  default     = "ap-south-1"
}

variable "aws_access_key" {
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  sensitive   = true
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
