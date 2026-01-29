
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "kratos_home" {
  bucket = "kratos-home-234"
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

resource "aws_s3_bucket_policy" "kratos_home" {
  bucket = aws_s3_bucket.kratos_home.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource = "${aws_s3_bucket.kratos_home.arn}/*"
      },
    ]
  })
}
