resource "aws_instance" "centos-6" {
  ami                         = "ami-e3fdd999"
  instance_type               = "t2.micro"
  key_name                    = aws_key_pair.deployer2.key_name
  associate_public_ip_address = true
  availability_zone           = "us-east-1a"
  iam_instance_profile = aws_iam_instance_profile.admin_profile.name
  tags = {
    "Name" = "Nasyikat"
  }
}
resource "aws_eip" "eip" {
  instance = aws_instance.centos-6.id
  vpc      = true
}