

# Create Security Group
resource "aws_security_group" "terraform_all" {
  name        = "terraform-all-sg"
  description = "Allow all inbound and outbound traffic"

  # Allow all inbound traffic
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Allow all outbound traffic
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}




resource "aws_instance" "terraform-example" {
  ami                    = "ami-0220d79f3f480ecf5"
  instance_type          =  var.env_type == "prod" ? "t3.micro" : "t2.micro"
  vpc_security_group_ids = [aws_security_group.terraform_all.id]

  tags = {
    Name = "terraform-${env_type}-server"
  }
}