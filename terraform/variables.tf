
variable "aws_region" {
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  type        = string
  default     = "kratos-home-${random_integer.random_id.result}"
}

variable "index_document" {
  type        = string
  default     = "index.html"
}

variable "error_document" {
  type        = string
  default     = "error.html"
}

variable "aws_access_key" {
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  sensitive   = true
}
