resource "aws_instance" "terraform_example" {

  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-06768f041e8b8b319"]

  tags = {
  Name        = "roboshop-sample"
}

 connection {
    type     = "ssh"
    user     = "ec2-user"
    password = "DevOps321"
    host     = self.public_ip
  }


  provisioner "remote-exec" {
    inline = [
      "sudo dnf install nginx -y",
      "sudo systemctl enable nginx",
      "sudo systemctl start nginx"
    ]
  }
}