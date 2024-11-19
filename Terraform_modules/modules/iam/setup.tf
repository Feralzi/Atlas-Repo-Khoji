resource "aws_iam_user" "new_employee_user" {
    name = var.employee_username
}

resource "aws_iam_group_membership" "employee_role" {
    name = "Employee role add"
    group = var.employee_role
    users = [ aws_iam_user.new_employee_user.id ]
}
