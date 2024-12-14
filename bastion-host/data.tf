# data.tf
data "aws_vpc" "target_vpc" {
  id = var.vpc_id
}

data "aws_subnet" "public_subnet" {
  id = var.public_subnet_id
}

data "aws_subnet" "private_subnet" {
  id = var.private_subnet_id
}

data "aws_security_group" "sg" {
  id = var.security_group_id
}
