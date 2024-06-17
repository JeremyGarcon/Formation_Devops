provider "aws" {
  region = "us-east-2"
  access_key = "AKIA6ODU7D6UESLGD75U"
  secret_key = "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"
}

resource "aws_s3_bucket" "terraform_state_bucket" {
  bucket = "s3-bucket-mysql-terraform"
  acl    = "private"
}

output "bucket_name" {
  value = aws_s3_bucket.terraform_state_bucket.bucket
}
