
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "kratos_home" {
  bucket = "kratos-home-${random_integer.random_id.result}"
  acl    = "private"

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket_public_access_block" "kratos_home" {
  bucket = aws_s3_bucket.kratos_home.id

  block_public_acls   = false
  block_public_policy = false
  ignore_public_acls  = false
  restrict_public_buckets = false
}

resource "random_integer" "random_id" {
  min = 10000
  max = 99999
}

output "website_endpoint" {
  value = aws_s3_bucket.kratos_home.website_endpoint
}

output "s3_bucket_name" {
  value = aws_s3_bucket.kratos_home.bucket
}
