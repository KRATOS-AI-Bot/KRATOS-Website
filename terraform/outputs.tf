
output "website_endpoint" {
  value = aws_s3_bucket_website_configuration.kratos_bucket.website_endpoint
}

output "s3_bucket_name" {
  value = aws_s3_bucket.kratos_bucket.id
}
