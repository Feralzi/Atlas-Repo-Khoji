output "bucket_name" {
    description = "Name of the bucket"
    value = aws_s3_bucket.tf_s3bucket.id
}

output "bucket_region" {
    description = "Region of the bucket"
    value = aws_s3_bucket.tf_s3bucket.region
}

output "kms_key" {
    description = "ID of the KMS key"
    value = aws_kms_key.tf_bucket_key.key_id
}

output "dynamodb" {
    description = "DynamoDB table"
    value = aws_dynamodb_table.tf_dynamodb.id
}