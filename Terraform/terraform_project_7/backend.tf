terraform {
  backend "s3" {
    bucket = "feralzitfstate"
    key    = "statefiles/terraform.tfstate"
    region = "us-east-2"
    dynamodb_table = "tf_statelock"
  }
}