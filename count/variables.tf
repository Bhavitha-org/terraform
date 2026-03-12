variable "instances" {
    type = list 
    default = ["mongodb", "catalogue", "redis", "frontend", "mysql", "rabbitmq", "shipping", "payment", "user", "cart"]
}