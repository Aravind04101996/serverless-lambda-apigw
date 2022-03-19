terraform {
  backend "s3" {
    bucket         = "serverless-tf-state-bucket"
    region         = "us-east-1"
    dynamodb_table = "tf-state-lock"
    key            = "serverless.tfstate"
  }
}