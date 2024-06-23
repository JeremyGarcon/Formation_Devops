provider "aws" {
    region     = "eu-central-1"
    access_key = "AKIA6ODU7D6UAVGUVNUT"
    secret_key = "N61y5+XInS2n/pRNg6UHN35cmQ4t/S72Qf026kLW"
}


# Définition d'une ressource EC2
resource "aws_instance" "example" {
  ami           = "ami-0767046d1677be5a0"
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}

# Déclaration d'une ressource S3 Bucket
resource "aws_s3_bucket" "example_bucket" {
  bucket = "example-bucket-name"
  acl    = "private"

  tags = {
    Name        = "ExampleBucket"
    Environment = "Production"
  }
}
