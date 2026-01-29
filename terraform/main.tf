
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "website" {
  bucket = "kratos-website-${random_string.random.id}"
  acl    = "public-read"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource = "arn:aws:s3:::${aws_s3_bucket.website.id}/*"
      },
    ]
  })
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

resource "random_string" "random" {
  length = 8
  special = false
  upper   = false
}

output "website_endpoint" {
  value = aws_s3_bucket.website.website_endpoint
}

output "s3_bucket_name" {
  value = aws_s3_bucket.website.id
}
