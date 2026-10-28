resource "aws_instance" "terraform_example" {

  ami                    = "ami-0055977a6e828a4f4"
  instance_type          =  lookup(var.instance_type,terraform.workspace)
  vpc_security_group_ids = ["sg-06768f041e8b8b319"]

  tags = {
  Name        = local.tags
}

}