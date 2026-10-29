variable ami_id {

    type = string
}

variable instance_type {

    type = string
}

variable vpc_id {

    type = list
}

variable tags {

    type = map 
    default = {
        Name = "dev-server"
    }
}