provider "aws" {
  region = var.region
}
terraform {
  backend "s3" {
    bucket         = "hareta-backend-bucket"
    key            = "terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "hareta-backend-s3-backend"
    encrypt        = true
  }

}
