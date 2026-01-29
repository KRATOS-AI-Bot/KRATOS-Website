
variable "aws_region" {
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name" {
  type        = string
  default     = "kratos-home-${random_integer.random_id.result}"
}

variable "random_id" {
  type = object({
    result = number
  })
}

resource "random_integer" "random_id" {
  min = 10000
  max = 99999
}
