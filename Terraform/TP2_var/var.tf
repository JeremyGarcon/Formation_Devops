variable "AWS_TOKEN" {
  type = string
    default = "Access Key"
    description = "value of the access key"
}

variable "AWS_SECRET" {
  type = string
    default = "My Secret Key"
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
