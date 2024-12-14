terraform {
  backend "s3" {
    bucket = "tfbackendbuckets3"
    key = "terraform/terraform.tfstate"
    region = "us-east-2"
    encrypt        = true
  }
}