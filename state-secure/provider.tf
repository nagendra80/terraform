terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 5.93.0"
    }
  }

  backend "s3" {
    bucket         = "testing-bucket-security1 "
    key            = "expense-backend-infra" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region         = "us-east-1"
    dynamodb_table = "82s-nagendra-state-locking"

  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}