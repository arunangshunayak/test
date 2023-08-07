provider "aws" {
  region     = "us-west-2"
  access_key = var.AWSAccessKeyId
  secret_key = var.AWSSecretKey
  version = "~> 3.0"

}