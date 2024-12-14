output "private_instance_private_ip" {
  value = aws_instance.private_instance.private_ip
  description = "The private IP address of the private EC2 instance."
}
output "private_instance_instance_id" {
  value = aws_instance.private_instance.id
  description = "The instance ID of the private EC2 instance."
}
