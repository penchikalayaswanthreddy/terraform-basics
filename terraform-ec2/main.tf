resource "aws_instance" "terraform-example" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-06768f041e8b8b319"]

  tags = {
    Name = "terraform-server"
  }
}