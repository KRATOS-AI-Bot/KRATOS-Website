
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "kratos_home" {
  bucket = "kratos-home-${random_integer.random_id.result}"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }

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
}

resource "random_integer" "random_id" {
  min = 10000
  max = 99999
}

output "website_endpoint" {
  value = aws_s3_bucket.kratos_home.website_endpoint
}

output "s3_bucket_name" {
  value = aws_s3_bucket.kratos_home.id
}
