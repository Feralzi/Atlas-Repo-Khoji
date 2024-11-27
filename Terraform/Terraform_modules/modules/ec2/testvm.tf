resource "aws_instance" "employee_vm" {
  ami               = var.ami
  availability_zone = var.az
  instance_type     = var.instance_type
  key_name          = var.key
  tags = {
    "Name" = var.name_vm
  }
}