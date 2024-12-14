resource "aws_instance" "bastion_host" {
  ami           = var.ami_id
  instance_type = "t2.micro" # Adjust as per your requirements
  subnet_id     = var.public_subnet_id
  key_name      = var.aws_key_pair_name

  security_groups = [
    var.security_group_id
  ]

  tags = {
    Name = "BastionHost"
  }
}