variable "project" {
    type = string
    }

variable "instance_type" {
    type = string
}

variable "ami_id" {
    type = string
    }

variable "instance_type" {
    default = "t3.micro"
    }

variable "sg_ids" {
    type = list(string)
    }


#Empty means  optional
 variable "tags"{
    type = map
    default = {} # if you dont give default then this variable become mandatory, 
    #keeping this we tells to users that they can over write this, they  can pass their own value as map.
    }

