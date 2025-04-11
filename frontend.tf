resource "aws_instance" "frontend" {
  ami           = "ami-09c813fb71547fc4f"
  instance_type = "t3.small"
  vpc_security_group_ids = ["sg-07b6cb1ebb35644ea"]

  tags = {
    Name = "frontend"
  }
}

provisioner "remote-exec" {

  connection {
  type     = "ssh"
  user     = "ec2-user"
  password = "DevOps321"
  host     = "self.public_ip"
}

provisioner "remote-exec" {
  inline = [
    "pip3.11 install ansible",
    "ansible-pull -i localhost, -u https://github.com/ashokkumarreddyv/roboshop roboshop.yml -e component_name=frontend -e env=dev",
  ]
}
}