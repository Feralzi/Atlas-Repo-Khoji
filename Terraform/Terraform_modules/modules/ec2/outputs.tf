output "pub_ip" {
  description = "Publiic IP of the instance"
  value       = aws_instance.employee_vm.public_ip
}

output "pri_ip" {
  description = "Private IP of the instance"
  value       = aws_instance.employee_vm.private_ip
}

output "instance_ID" {
  description = "Instance ID of the VM"
  value       = aws_instance.employee_vm.id
}