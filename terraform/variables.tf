
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

variable "index_file" {
  type        = string
  default     = "index.html"
  description = "Index File Name"
}
