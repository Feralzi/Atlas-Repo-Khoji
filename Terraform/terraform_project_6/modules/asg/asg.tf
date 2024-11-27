data "aws_subnet" "subnet1" {
  id = "subnet-033acea066c0bd734"
}

data "aws_subnet" "subnet2" {
  id = "subnet-080d2f634bdc9f74d"
}

resource "aws_autoscaling_group" "tf_asg" {
  name = var.asgname
  max_size = var.max
  min_size = var.min
  desired_capacity = var.desired
  vpc_zone_identifier = [ data.aws_subnet.subnet1.id, data.aws_subnet.subnet2.id ]
  launch_template {
    id = var.lt_id
    version = var.lt_version
  }

}