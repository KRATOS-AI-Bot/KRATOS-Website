terraform
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "website" {
  bucket = "cyberpunk-website-${random_string.random.id}"
  acl    = "public-read"

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
    error_document = "error.html"
  }
}

resource "aws_s3_bucket_policy" "website" {
  bucket = aws_s3_bucket.website.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource = "${aws_s3_bucket.website.arn}/*"
      },
    ]
  })
}

resource "random_string" "random" {
  length  = 8
  special = false
  upper   = false
}

output "website_endpoint" {
  value = aws_s3_bucket.website.website_endpoint
}

output "s3_bucket_name" {
  value = aws_s3_bucket.website.id
}
