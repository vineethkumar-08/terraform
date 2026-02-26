variable "name" {
    type = string
    default = "locals"
}


variable "environment" {
    type = string
    default = "dev"
}


# variable "instance_name" {
#     type = string
#     default = "${var.name}-${var.environment}" # output shouod be like locals.dev
# }

# using variable inside variable doesn't perfrom while initializing, so we need to use locals.tf


variable "ec2_tags" {
    default = {
        Name = "locals_demo"
        Environment = "dev"
    }
}

variable "sg_tags" {
        default = {
        Name = "locals_demo"
    }
}