module ec2_create {

    source =  "../ec2_create_module"

    ami                    = "ami-0055977a6e828a4f4"

    instance_type          =  "t2.micro"

    vpc_security_group_ids = ["sg-06768f041e8b8b319"]

   
}

output "public_ip" {

        value = module.ec2_create.public_ip
    }

