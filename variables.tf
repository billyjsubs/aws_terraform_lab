locals {
  ami                 = "ami-0a606d8395a538502"
  instance_type       = "t2.micro"
  my_vpc              = "vpc-ad8920c6"
  my_security_groupid = "sg-012abdb6ef7b3f900"
}

output "public_ip" {

  value       = aws_instance.amazonlinux.public_ip
  description = "Public IP Address of EC2 instance"
}

output "instance_id" {

  value = aws_instance.amazonlinux.id

  description = "Instance ID"

}

output "security_group" {

  value       = aws_security_group.demo-sg.id
  description = "SG ID"
}