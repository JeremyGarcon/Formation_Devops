provider "aws" {
  region = "us-east-2"
}

resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "s3-bucket-mysql-terraform"
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.terraform_state_bucket.bucket
}
