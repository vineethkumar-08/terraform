terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.33.0" # terrafomr aws provider version
    }
  }
  backend "s3" {}
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

