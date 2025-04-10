terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.82.0"
    }
  }
  backend "s3" {
    bucket         = "harsha81-remote-state-dev"
    key            = "expense-rds-dev"
    region         = "us-east-1"
    dynamodb_table = "81s-locking-dev"
  }
}

provider "aws" {
  region = "us-east-1"
}