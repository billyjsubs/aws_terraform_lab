resource "aws_instance" "amazonlinux" {

  ami                    = local.ami
  instance_type          = local.instance_type
  vpc_security_group_ids = [local.my_security_groupid]
  key_name               = "labkey"

  tags = {

    Name = "My amazon-linux EC2 micro instance",

  }
  depends_on = [
    aws_key_pair.my_new_key
  ]
}

resource "aws_instance" "ubuntu_server" {
  ami = local.ami_ubuntu_server
  instance_type = local.ami_ubuntu_server_instance_type
  vpc_security_group_ids = [local.my_security_groupid]
  key_name = "labkey"

    tags = {

    Name = "UBuntu Server",

  }
  depends_on = [
    aws_key_pair.my_new_key
  ]
}
