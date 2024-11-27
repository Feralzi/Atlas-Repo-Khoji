resource "aws_s3_bucket" "tf_s3bucket" {
  bucket = var.s3name
}

resource "aws_s3_bucket_versioning" "tf_versioning" {
  bucket = aws_s3_bucket.tf_s3bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_server_side_encryption_configuration" "tf_s3_encryption" {
  bucket = aws_s3_bucket.tf_s3bucket.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm     = "aws:kms"
      kms_master_key_id = aws_kms_key.tf_bucket_key.key_id
    }
  }
  depends_on = [aws_kms_key.tf_bucket_key]
}

resource "aws_kms_key" "tf_bucket_key" {
  description = "This key is to encrypt s3 bucket"
}