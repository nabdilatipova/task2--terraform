 resource "aws_iam_instance_profile" "admin_profile" {
     name = "admin_profile"
     role = aws_iam_role.admin-role.name
 }