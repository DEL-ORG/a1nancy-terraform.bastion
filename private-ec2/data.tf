data "aws_vpc" "target_vpc" {
  filter {
    name = "tag:Name"
    values = ["prod-cyclops-vpc"]
  }
}

data "aws_subnet" "private_subnet" {
  filter {
    name = "tag:Name"
   values = ["prod-cyclops-private-subnet-3"] 
  }
}

# data "aws_subnet" "public_subnet" {
#   filter{
#     name = "tag:Name" 
#     values = prod-cyclops-public-subnet-1
#   }
# }

data "aws_security_group" "private_sg" {
  filter{
    name = "tag:Name" 
    values = ["prod-cyclops"]
  }
}

data "aws_ami" "ubuntu_ami" {
  most_recent = true
  owners      = ["099720109477"] # Canonical's AWS account ID for official Ubuntu images

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"] # Ubuntu 20.04 LTS
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"] # Filter for HVM virtualization type
  }

  filter {
    name   = "state"
    values = ["available"] # Only fetch available AMIs
  }
}
