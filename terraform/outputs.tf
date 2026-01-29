terraform
output "website_endpoint" {
  value = "https://${aws_s3_bucket.static_website_bucket.website_endpoint}"
}

output "s3_bucket_name" {
  value = aws_s3_bucket.static_website_bucket.id
}
