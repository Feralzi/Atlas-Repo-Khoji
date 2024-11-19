variable "ami" {
  description = "AMI for the vm"
  type        = string
  default     = "ami-050cd642fd83388e4"
}

variable "az" {
  description = "Availability Zone"
  type        = string
  default     = "us-east-2a"
}

variable "instance_type" {
  description = "Instance type"
  type        = string
  default     = "t2.micro"
}

variable "key" {
  description = "Key for the VM"
  type        = string
  default     = "VM1-key"
}

variable "name_vm" {
  type        = string
  description = "Name of the VM"
  default     = "Employee_vm"
}