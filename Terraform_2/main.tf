resource "aws_instance" "ec2-instance" {
  ami                         = "ami-050cd642fd83388e4"
  associate_public_ip_address = true
  availability_zone           = "us-east-2a"
  instance_type               = "t2.micro"
  tags = {
    "Name" = "TerraformT2"
  }

}
