output "bastion_host_public_ip" {
  value = aws_instance.bastion_host.public_ip
  description = "The public IP address of the Bastion Host."
}
output "bastion_host_instance_id" {
  value = aws_instance.bastion_host.id
  description = "The instance ID of the Bastion Host."
}
