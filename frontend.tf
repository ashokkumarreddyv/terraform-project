resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-07b6cb1ebb35644ea"]

  tags = {
    Name = "frontend"
  }


}

resource  "null_resource" "frontend" {

  provisioner "remote-exec" {

    connection {
      type     = "ssh"
      user     = "ec2-user"
      password = "DevOps321"
      host     = aws_instance.frontend.public_ip
    }


    inline = [
      "sudo pip3.11 install ansible",
      "ansible-pull -i localhost, -U https://github.com/ashokkumarreddyv/Ansible-project roboshop.yml -e component_name=frontend -e env=dev"
    ]

  }

}



