terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "82s-nagendra-tf-remote-state"
    key    = "expense-backend-infra" # You should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    dynamodb_table = "82s-nagendra-state-locking"
  }

}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}