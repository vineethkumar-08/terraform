variable "instance"{
    type = map
    default= {
        mongobd = "t3.micro"
        redis = "t3.micro"
        mysql = "t3.small"
        catalogue = "t3.micro"
        
    }
}


variable "zone_id"{
    default = "Z0760197PITCJBO2DZXK"

}

variable "domain_name"{
    default = " devopspractice08.online "

}