resource "aws_instance" "terraform_example" {
  count = length(var.instance_names)

  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-06768f041e8b8b319"]

  tags = {
    Name = var.instance_names[count.index]
  }
}


resource "aws_route53_record" "roboshop" {

   count = length(var.instance_names)

  zone_id = "Z09213753OGMO79IX22TR"
  name    = "${var.instance_names[count.index]}.yaswanthreddypenchikala.online"
  type    = "A"
  ttl     = 1

  records = [aws_instance.terraform_example[count.index].public_ip]
}