resource "aws_security_group" "tf_sg_1" {
    name = var.sgname
    description = "Allow ssh and http/s"
    vpc_id = var.vpcid
}

resource "aws_vpc_security_group_ingress_rule" "tf_sgingress1" {
  security_group_id = aws_security_group.tf_sg_1.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "tcp"
  from_port = 22
  to_port = 22
}

resource "aws_vpc_security_group_ingress_rule" "tf_sgingress2" {
  security_group_id = aws_security_group.tf_sg_1.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "tcp"
  from_port = 80
  to_port = 80
}

resource "aws_vpc_security_group_ingress_rule" "tf_sgingress3" {
  security_group_id = aws_security_group.tf_sg_1.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "tcp"
  from_port = 443
  to_port = 443
}

resource "aws_vpc_security_group_egress_rule" "tf_sgegress" {
  security_group_id = aws_security_group.tf_sg_1.id
  cidr_ipv4 = "0.0.0.0/0"
  ip_protocol = "-1"
}