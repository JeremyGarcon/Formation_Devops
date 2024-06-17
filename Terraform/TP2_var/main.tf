provider "aws" {
    region = var.AWS_REGION
    access_key = var.AWS_TOKEN
    secret_key = var.AWS_SECRET
}


resource "aws_instance" "my_ec2_instance" {
    ami = var.ami
    instance_type = var.instance_type
}
