#https://registry.terraform.io/providers/hashicorp/aws/latest
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.50.0"

    }
    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }
  }
  backend "s3" {
    bucket         = var.s3_backend
    key            = var.s3_key
    region         = var.aws_region
    encrypt        = var.s3_encrypt
    dynamodb_table = var.dynamo_db_table
  }
}


provider "aws" {
  region = var.aws_region
}
