
variable "aws_region" {
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  type        = string
}

variable "environment" {
  type        = string
  default     = "production"
}

variable "aws_access_key" {
  type        = string
  sensitive   = true
}

variable "aws_secret_key" {
  type        = string
  sensitive   = true
}
