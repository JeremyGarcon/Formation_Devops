variable "AWS_REGION" {
  description = "The region to launch the instance"
    type = string
}

variable "AWS_TOKEN" {
  description = "The AWS access key"
    type = string
}

variable "AWS_SECRET" {
  description = "The AWS secret key"
    type = string
}

variable "ami" {
  description = "The AMI to use"
    type = string
  
}

variable "name_vm" {
  description = " of the Name tag for the instance"
    type = string
}

variable "instance_type" {
  description = "The type of instance to launch"
    type = string
  
}

variable "ssh_public_key" {
  description = "The SSH public key to use"
    type = string
  
}

variable "key_name" {
  description = "The name of the EC2 key pair to use"
    type = string
  
}
