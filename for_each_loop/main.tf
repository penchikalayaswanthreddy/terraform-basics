resource "aws_instance" "terraform_example" {
  for_each = toset(var.instance_names)

  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          = "t2.micro"
  vpc_security_group_ids = ["sg-06768f041e8b8b319"]

  tags = {
    Name = each.value
  }
}

resource "aws_route53_record" "roboshop" {
  for_each = toset(var.instance_names)

  zone_id = "Z09213753OGMO79IX22TR"
  name    = "${each.value}.yaswanthreddypenchikala.online"
  type    = "A"
  ttl     = 1

  records = [aws_instance.terraform_example[each.value].public_ip]
}