resource "aws_instance" "example" {
    # for_each = var.instances
    for_each = toset(var.instances)
    ami = "ami-0220d79f3f480ecf5"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]

    tags = {
        Name = each.key 
        Project = "roboshop"
    }
}
#this resource is also block
resource "aws_security_group" "allow_tls" {
    name = "allow_all_terraform"  
    description = "Allow TLS inbound traffic and all outbound traffic"

#this egress and ingress are not map, it is block in terraform
    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }


    tags = {
        Name = "allow_all_terraform"
    }
}