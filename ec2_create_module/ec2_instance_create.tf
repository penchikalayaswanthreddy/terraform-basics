resource "aws_instance" "this" {

  ami                    =  var.ami_id
  instance_type          =  var.instance_type
  vpc_security_group_ids =  var.vpc_id

  tags = var.tags

}