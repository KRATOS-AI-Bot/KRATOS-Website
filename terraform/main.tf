
provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "website" {
  bucket = "kratos-identity-protocol"
  acl    = "public-read"
  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Sid       = "PublicReadGetObject"
        Effect    = "Allow"
        Principal = "*"
        Action    = "s3:GetObject"
        Resource = "arn:aws:s3:::kratos-identity-protocol/*"
      },
    ]
  })

  website {
    index_document = "index.html"
  }
}

output "website_endpoint" {
  value = aws_s3_bucket.website.website_endpoint
}

output "s3_bucket_name" {
  value = aws_s3_bucket.website.id
}
