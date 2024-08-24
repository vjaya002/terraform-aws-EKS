#https://registry.terraform.io/providers/hashicorp/aws/latest
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.59.0"

    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.2"
    }
  }
  backend "s3" {
    bucket         = var.s3_backend
    key            = var.s3_key
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "tf-backend"
  }
}


provider "aws" {
  region = "us-east-1"
  alias  = "us-west-2"
}
