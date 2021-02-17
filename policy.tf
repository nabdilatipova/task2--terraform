resource "aws_iam_role_policy" "admin_policy" {
  name = "admin_policy"
  role = aws_iam_role.admin-role.id
  
  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Effect": "Allow",
            "Action": "*",
            "Resource": "*"
        }
    ]
}  
EOF
 }

