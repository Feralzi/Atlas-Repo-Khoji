module "iam" {
  source = "./modules/iam"
  employee_username = "JakeIntern"
}

module "ec2" {
  source = "./modules/ec2"
}

output "pub_ip" {
  description = "Publiic IP of the instance"
  value       = module.ec2.pub_ip
}

output "pri_ip" {
  description = "Private IP of the instance"
  value       = module.ec2.pri_ip
}

output "instance_ID" {
  description = "Instance ID of the VM"
  value       = module.ec2.instance_ID
}