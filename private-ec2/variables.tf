variable "vpc_id" {
  type        = string
  description = "The ID of the VPC."
}

variable "private_subnet_id" {
  type        = string
  description = "The ID of the private subnet where the private EC2 instance will be deployed."
}

variable "public_subnet_id" {
  type        = string
  description = "The ID of the public subnet where the Bastion Host will be deployed."
}

variable "private_security_group_id" {
  type        = string
  description = "The security group ID for the private EC2 instance."
}

variable "ami_id" {
  type        = string
  description = "The AMI ID for the EC2 instances."
}

variable "key_name" {
  type        = string
  description = "The name of the AWS key pair for accessing the instances."
}
