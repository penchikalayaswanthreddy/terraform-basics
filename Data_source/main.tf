data "aws_instance" "example" {
  instance_id = "i-0159bc205155bb21f"
}

output "instance_details" {
  value = data.aws_instance.example.public_ip
}