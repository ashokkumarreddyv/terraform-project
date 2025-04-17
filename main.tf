resource "aws_instance" "instance" {
  for_each = var.instances
  ami           = var.ami_id
  instance_type = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = var.instances[each.key]
  }

}

# resource  "null_resource" "frontend" {
#
#   provisioner "remote-exec" {
#
#     connection {
#       type     = "ssh"
#       user     = "ec2-user"
#       password = "DevOps321"
#       host     = aws_instance.frontend.public_ip
#     }
#
#
#     inline = [
#       "sudo pip3.11 install ansible",
#       "ansible-pull -i localhost, -U https://github.com/ashokkumarreddyv/Ansible-project roboshop.yml -e component_name=mysql -e env=dev"
#     ]
#
#   }
#
# }






