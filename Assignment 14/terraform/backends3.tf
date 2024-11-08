resource "aws_s3_bucket" "terraform_bucket" {
    bucket = "tfbackendbuckets3"  
}

resource "aws_kms_key" "terraform_kms" {
    description = "kms key to encrypt s3 bucket"
}

resource "aws_s3_bucket_server_side_encryption_configuration" "terraform_kms_s3_encrypt" {
  bucket = aws_s3_bucket.terraform_bucket.id

  rule {
    apply_server_side_encryption_by_default {
      kms_master_key_id = aws_kms_key.terraform_kms.arn
      sse_algorithm = "aws:kms"
    }
  }
}