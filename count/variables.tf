variable "instances" {
    type = list 
    default = ["mongodb", "catalogue", "redis", "frontend", "mysql", "rabbitmq", "shipping", "payment", "user", "cart"]
}

variable "zone_id" {
    default = "Z05013202FKF0ZL12WAOP"
}

variable "domain_name" {
    default = "exploreops.online"
}




