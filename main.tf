terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "lab_bucket" {
  bucket = "t-aws-lab-himanshu-2026"

  tags = {
    Name        = "DevSecOps-S3-Lab"
    Environment = "Lab"
  }
}