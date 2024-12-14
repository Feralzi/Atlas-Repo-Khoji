module "dynamodb" {
  source     = "./modules/dynamodb"
  dynamoname = "tf.dynamodb"
}

module "s3" {
  source = "./modules/s3"
  s3name = "tfkhojis3statefile"
}