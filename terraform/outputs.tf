
output "website_endpoint" {
  value = "https://${aws_s3_bucket.static_website.bucket_regional_domain_name}"
}

output "s3_bucket_name" {
  value = aws_s3_bucket.static_website.id
}
