provider "aws" {
    region = "us-east-2"
    access_key = "AKIA6ODU7D6UESLGD75U"
    secret_key = "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"
}


resource "aws_instance" "my_ec2_instance" {
    ami = "ami-07c1207a9d40bc3bd"
    instance_type = "t2.micro"
}
