data "aws_vpc" "terraform_vpc" {
    default = true
}

resource "aws_security_group" "terraform_sg" {
    name = "ssh https nfs"
    description = "security group for vpc"
    vpc_id = data.aws_vpc.terraform_vpc.id

    ingress = 
}