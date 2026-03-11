resource "aws_instance" "example" {
    ami = var.ami_id
    #if dev t3.micro, otherwise t3.small (for dev env no need heavy capacity instances unlike prod)
    instance_type = var.environment == "dev" ? "t3.micro" : "t3.small"
    vpc_security_group_ids = [aws_security_group.allow_tls.id]

    tags = var.ec2_tags
}

resource "aws_security_group" "allow_tls" {
    name = "allow_all_terraform"  
    description = "Allow TLS inbound traffic and all outbound traffic"

    egress {
        from_port = var.sg_from_port
        to_port = var.sg_to_port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
        ipv6_cidr_blocks = ["::/0"]
    }

    ingress {
        from_port = var.sg_from_port
        to_port = var.sg_to_port
        protocol = "-1"
        cidr_blocks = var.cidr_blocks
        ipv6_cidr_blocks = ["::/0"]
    }


    tags = var.sg_tags
}