resource "aws_security_group" "demo-sg" {
  name        = "sec-grp"
  description = "Allow HTTP and SSH traffic via Terraform"
  vpc_id      = local.my_vpc

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}


resource "aws_key_pair" "my_new_key" {
  key_name   = "my_new_key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQD3F6tyPEFEzV0LX3X8BsXdMsQz1x2cEikKDEY0aIj41qgxMCP/iteneqXSIFZBp5vizPvaoIR3Um9xK7PGoW8giupGn+EPuxIA4cDM4vzOqOkiMPhz5XK0whEjkVzTo4+S0puvDZuwIsdiW9mxhJc7tgBNL0cYlWSYVkz4G/fslNfRPW5mYAM49f4fhtxPb5ok4Q2Lg9dPKVHO/Bgeu5woMc7RY0p1ej6D4CKFE6lymSDJpW0YHX/wqE9+cfEauh7xZcG0q9t2ta6F6fmX0agvpFyZo8aFbXeUBr7osSCJNgvavWbM/06niWrOvYX2xwWdhXmXSrbX8ZbabVohBK41 email@example.com"
}

resource "aws_key_pair" "labkey"{
  key_name = "labkey"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKxcyaZxQUHiP+3A6tujcOn4h5CtRFtjP38ZXOErYKpU"
}

# resource "security_group_rule" "default_ingres_ssh" {
#   type              = "ingress"
#   protocol          = "tcp"
#   from_port         = "22"
#   to_port           = "22"
#   security_group_id = aws_security_group.demo-sg.id

# }