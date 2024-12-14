# variables.tf
variable "vpc_id" {
  type = string
}

variable "private_subnet_id" {
  type = string
}

variable "public_subnet_id" {
  type = string
}

variable "security_group_id" {
  type = string
}

variable "ami_id" {
  type = string
}

variable "aws_key_pair_name" {
  type = string
}
