# main.tf
resource "aws_instance" "private_instance" {
  ami           = data.aws_ami.ubuntu_ami.id
  instance_type = "t2.micro" # Adjust as per your requirements
  subnet_id     = data.aws_subnet.private_subnet.id
  key_name      = "classkey"

  security_groups = [data.aws_security_group.private_sg.id]

  tags = {
    Name = "private_instance"
  }
}

