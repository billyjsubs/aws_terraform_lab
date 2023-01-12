resource "aws_instance" "amazonlinux" {

  ami                    = local.ami
  instance_type          = local.instance_type
  vpc_security_group_ids = [local.my_security_groupid]


  tags = {

    Name = "My amazon-linux EC2 micro instance",

  }

}