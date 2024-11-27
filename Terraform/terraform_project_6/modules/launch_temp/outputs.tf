output "lt_output_id" {
  value = aws_launch_template.tf_launch_template.id
}

output "lt_output_version" {
  value = aws_launch_template.tf_launch_template.latest_version
}