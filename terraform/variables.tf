
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

variable "aws_access_key" {
  type        = string
  sensitive   = true
  description = "AWS Access Key"
}

variable "aws_secret_key" {
  type        = string
  sensitive   = true
  description = "AWS Secret Key"
}
