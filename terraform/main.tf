
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "website" {
  bucket = "my-static-website-bucket"
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

resource "aws_s3_bucket_website_configuration" "website" {
  bucket = aws_s3_bucket.website.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }
}

output "website_endpoint" {
  value = "http://${aws_s3_bucket.website.bucket}.s3-website.ap-south-1.amazonaws.com"
}

output "s3_bucket_name" {
  value = aws_s3_bucket.website.id
}
