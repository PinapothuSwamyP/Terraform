resource "aws_s3_bucket" "pswamybuckeynickname" {
    bucket = var.bucket_name
    tags = {
        Name = var.bucket_name
        Envirnonment = var.env
    }
}
resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.pswamybuckeynickname.id
  versioning_configuration {
    status = var.bucket_status
  }
}
 resource "aws_s3_bucket_lifecycle_configuration" "example_lifecycle" {
      bucket = aws_s3_bucket.pswamybuckeynickname.id # Reference to your S3 bucket
      rule {
        id = "expire_old_objects"
        status = var.lifecycle_status
        expiration {
          days = var.day_count # Objects will expire 1 days after creation
        }
        # Optional: Apply to a subset of objects using a filter
        # filter {
        #   prefix = "logs/" # Only objects with this prefix will expire
        # }
      }
    }
