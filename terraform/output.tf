
output "website_endpoint" {
  value = "https://${aws_s3_bucket.static_website_bucket.bucket}.s3.${aws_s3_bucket.static_website_bucket.region}.amazonaws.com"
}

output "s3_bucket_name" {
  value = aws_s3_bucket.static_website_bucket.id
}
