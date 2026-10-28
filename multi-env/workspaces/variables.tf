variable instance_type {
    type = map
    default = {

        dev =  "t2.micro"
        prod = "t3.micro"
    }
}

variable env_name {

    type = map
    default = {

        dev = "dev"
        prod = "prod"
    }

}