variable "instances" {
    type = list 
    default = ["mongodb", "catalogue", "redis", "frontend", "mysql", "rabbitmq", "shipping", "payment", "user", "cart"]
}

variable "zone_id" {
    default = "Z047633137OO0E33GOO9K"
}

variable "domain_name" {
    default = "exploreops.online"
}






