variable "instances" {
    type = map(string)
    default = {
        mongodb = "t3.micro"
        mysql = "t3.small"
        shipping = "t3.small"
        user = "t3.micro"
    } 
}