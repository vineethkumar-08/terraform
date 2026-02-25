variable "instances"{
    type = list
    default= ["mongodb","catalogue","mysql","payment","shippping","rabbitmq","frontend","redis","user","cart"]

}

variable "zone_id"{
    default = "Z0760197PITCJBO2DZXK"

}

variable "domain_name"{
    default = " devopspractice08.online "

}