
output "website_endpoint" {
  value = aws_s3_bucket.kratos_home.website_endpoint
}

output "s3_bucket_name" {
  value = aws_s3_bucket.kratos_home.id
}
