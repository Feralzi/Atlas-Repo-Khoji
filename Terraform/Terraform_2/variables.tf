variable "ami" {
  description = "Amazon Linux 2 AMI ID"
  type = string
}

variable "instance_type" {
  description = "Instance type for EC2"
  type = string
}

variable "availability_zone" {
  description = "AZ for EC2"
  type = string
}

variable "instance_name" {
  description = "Name of your EC2"
  type = string
}