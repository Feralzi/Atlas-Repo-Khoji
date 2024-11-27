resource "aws_s3_bucket" "tf_s3_bucket" {
  bucket = "terraformstatefileforatlas"
}

resource "aws_s3_bucket_versioning" "tf_s3_versioning" {
  bucket = aws_s3_bucket.tf_s3_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_dynamodb_table" "dynamo_state_lock" {
  name           = "terraform-state-lock"
  read_capacity  = 5
  write_capacity = 5
  hash_key       = "LockID"
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    "Name" = "DynamoDB Terraform State Lock Table"
  }
}

terraform {
  backend "s3" {
    bucket         = "terraformstatefileforatlas"
    key            = "state/terraform.tfstate"
    region         = "us-east-2"
    dynamodb_table = "terraform-state-lock"
  }
}