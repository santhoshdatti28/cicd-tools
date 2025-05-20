terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }

  backend "s3" {
    bucket = "sk-tf-remote-state-prod"
    key    = "expense-dev-cicd" # you should have unique keys with in the bucket, same key should not be used in other repos or tf projects
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
}