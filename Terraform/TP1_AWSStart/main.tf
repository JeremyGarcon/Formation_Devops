provider "aws" {
    region = "us-east-2"
    access_key = "Access Key"
    secret_key = "My Secret Key"
}


resource "aws_instance" "my_ec2_instance" {
    ami = "ami-07c1207a9d40bc3bd"
    instance_type = "t2.micro"
}
