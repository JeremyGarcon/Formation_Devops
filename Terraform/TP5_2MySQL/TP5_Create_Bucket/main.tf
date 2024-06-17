provider "aws" {
  region = "us-east-2"
  access_key = "Access Key"
  secret_key = "My Secret Key"
}

resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "s3-bucket-mysql-terraform"
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.terraform_state_bucket.bucket
}
