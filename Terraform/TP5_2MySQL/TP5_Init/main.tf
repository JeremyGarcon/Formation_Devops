# Fournisseur AWS
provider "aws" {
  region     = var.AWS_REGION
  access_key = var.AWS_ACCESS_KEY
  secret_key = var.AWS_SECRET_KEY
}

# Configuration du backend pour stocker l'état dans S3
terraform {
  backend "s3" {
    bucket = "s3-bucket-mysql-terraform"
    key    = "terraform.tfstate"
    region = "us-east-2"
  }
}

# Création d'une instance Amazon RDS (MySQL)
resource "aws_db_instance" "my_db_instance" {
  identifier            = "mydbinstance"
  engine                = "mysql"
  instance_class        = "db.t2.micro"
  allocated_storage     = 20
  storage_type          = "gp2"
  username              = var.db_username
  password              = var.db_password
  publicly_accessible   = true
  vpc_security_group_ids = var.security_group_ids

  tags = {
    Name = "MyDBInstance"
  }
}

# Création des instances EC2
resource "aws_instance" "my_ec2_instance" {
  count         = 2
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "machine${count.index + 1}"
  }

  network_interface {
    network_interface_id = aws_network_interface.my_ec2_interface[count.index].id
    device_index         = 0
  }
}

resource "aws_network_interface" "my_ec2_interface" {
  count           = 2
  subnet_id       = var.subnet_id
  private_ips     = ["172.31.32.${count.index + 10}"]
  security_groups = var.security_group_ids
}
