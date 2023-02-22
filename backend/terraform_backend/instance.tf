terraform {
  backend "s3" {
    bucket = "rudra-s3"
    region = "us-east-1"
    key = "terraform.tfstate"

  }
}