resource "aws_launch_template" "tf_launch_template" {
  description = "Terraform Launch Template"
  image_id = var.ami
  instance_type = t2.micro
  key_name = VM1-key.pem
  vpc_security_group_ids = [var.sgid]
  user_data = base64encode(
    <<-EOF
    #!/bin/bash
    yum update
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Hello from Terraform!</h1>" > /var/www/html/index.html
    EOF
  )
}