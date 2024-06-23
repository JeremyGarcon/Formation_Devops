# Déclaration du module EC2
module "ec2_instance" {
  source = "./ec2_instance"

  # Variables du module
  instance_type = "t2.micro"
  ami_id        = "ami-12345678"
}
