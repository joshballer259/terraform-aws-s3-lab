
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region  = "us-west-2"
  profile = "terraform-lab"
}

resource "aws_s3_bucket" "student" {
  bucket = "josh-uvu-terraform-lab-2026"
}

resource "aws_s3_bucket_public_access_block" "student" {
  bucket = aws_s3_bucket.student.id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

output "bucket_name" {
  value = aws_s3_bucket.student.bucket
}
