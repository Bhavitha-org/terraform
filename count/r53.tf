resource "aws_route53record" "www" {
    count = 10
    zone_id = var.zone_id
    #interpolation
    name = "${var.instances[count.index]}.${var.domain_name}"      #mongodb.exploreops.online
    type = "A"
    ttl = 1
    records = [aws_eip.lb.public_ip]
}