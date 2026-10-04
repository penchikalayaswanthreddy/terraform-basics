# Data Source
data "aws_security_group" "allow_all_traffic" {
  filter {
    name   = "group-name"
    values = ["Allow_all_traffic"]
  }
}

# Output Security Group ID
output "security_group_id" {
  value = data.aws_security_group.allow_all_traffic.id
}