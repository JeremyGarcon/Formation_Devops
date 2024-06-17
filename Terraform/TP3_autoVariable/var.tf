variable "AWS_TOKEN" {
  type = string
    description = "value of the access key"
}

variable "AWS_SECRET" {
  type = string
    description = "value of the secret key"
}

variable "AWS_REGION" {
  type = string
    description = "value of the region"
}

variable "instance_type" {
    type = string
  description = "The type of instance to use"
}

variable "ami" {
    type = string
    description = "The AMI to use"
}
