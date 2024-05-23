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
}


provider "aws" {
  region = "us-east-1"
}
