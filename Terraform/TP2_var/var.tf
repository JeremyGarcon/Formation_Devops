variable "AWS_TOKEN" {
  type = string
    default = "AKIA6ODU7D6UESLGD75U"
    description = "value of the access key"
}

variable "AWS_SECRET" {
  type = string
    default = "0aCL850MpG+/5P74cg//Z7DyqGJogG6FUDBavEI4"
    description = "value of the secret key"
}

variable "AWS_REGION" {
  type = string
    default = "us-east-2"
    description = "value of the region"
}

variable "instance_type" {
  description = "The type of instance to use"
  type        = string
  default     = "t2.micro"
}

variable "ami" {
  type        = string
    default = "ami-07c1207a9d40bc3bd"
    description = "The AMI to use"
}
