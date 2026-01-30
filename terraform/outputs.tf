
output "website_endpoint" {
  value = aws_s3_bucket.kratos-home-12345.website_endpoint
}

output "s3_bucket_name" {
  value = aws_s3_bucket.kratos-home-12345.id
}
