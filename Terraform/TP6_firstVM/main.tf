provider "aws" {
   region     = "eu-central-1"
   access_key = "AKIA6ODU7D6UAVGUVNUT"
   secret_key = "N61y5+XInS2n/pRNg6UHN35cmQ4t/S72Qf026kLW"
   
}

resource "aws_instance" "ec2_example" {

    ami = "ami-0767046d1677be5a0"  
    instance_type = "t2.micro" 
    key_name= "aws_key"
    vpc_security_group_ids = [aws_security_group.main.id]

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update -y",
      "sudo apt-get install git -y",
      "sudo apt-get install docker -y",
      "sudo apt-get install docker-compose -y",
      "sudo  git clone https://github.com/JeremyGarcon/Formation_Devops.git",
    ]
  }
  connection {
      type        = "ssh"
      host        = self.public_ip
      user        = "ubuntu"
      private_key = file("/home/jeremy/ssh_terraform/TP6/id_rsa")
      timeout     = "4m"
   }
}

resource "aws_security_group" "main" {
  egress = [
    {
      cidr_blocks      = [ "0.0.0.0/0", ]
      description      = ""
      from_port        = 0
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      protocol         = "-1"
      security_groups  = []
      self             = false
      to_port          = 0
    }
  ]
 ingress                = [
   {
     cidr_blocks      = [ "0.0.0.0/0", ]
     description      = ""
     from_port        = 22
     ipv6_cidr_blocks = []
     prefix_list_ids  = []
     protocol         = "tcp"
     security_groups  = []
     self             = false
     to_port          = 22
  }
  ]
}


resource "aws_key_pair" "deployer" {
  key_name   = "aws_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD+8B69osDXEPikxeR1stNrosmFxe44uLr4HdnErZZJh0w9bzroip5KSjM7hXSvrSYP8Z/fRFIe95uO6yDm60iPpyKmzp0z1RjWTN19ePt5dq00C7XH7YewKbZv4wuzoUEyEmheUyZVfNVSqtYEzYvyS3kpTRLTQxYhnLggtiTD0FOS/ZaZQlFbID5RPeAhC/Jogf5U2izbX0aak5OJ8YobZa/mtu6FgKX0BHqDdhoLyq2/f9bWWtMB8+Wc4iTlTHwN6oHrcEzUYx62vnxQLoWZcsQnGUSh1Mz6i37BELtMue8u9c0GpQJGjBpH31fKqEuohxtEjcM1jxnNpyh6SEsz root@DESKTOP-EM21BRD"
}
