#MAP
# variable "instances" {
#     type = map(string)
#     default = {
#         mongodb = "t3.micro"
#         mysql = "t3.small"
#         shipping = "t3.small"
#         user = "t3.micro"
#     } 
# }

#this list should be converted into set
variable "instances" {
    type = list 
    default = ["mongodb", "shipping"]
}

variable "zone_id" {
    default = "Z047633137OO0E33GOO9K"
}

variable "domain_name" {
    default = "exploreops.online"
}