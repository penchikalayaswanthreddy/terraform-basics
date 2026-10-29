terraform {
  backend "s3" {
    bucket = "yaswanth-penchikala-86s-terraform-modules"
    key    = "ec2-create-demo"
    region = "us-east-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}