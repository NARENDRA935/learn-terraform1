resource "aws_route53_record" "records" {
  zone_id = "Z02327421CM6HX7FT19J5"
  name    = "test"
  type    = "A"
  ttl     = 30
  #records = [lookup(lookup(aws_instance.instances,each.key,null),"private_ip",null)]
  records = [var.private_ip]
}

variable "private_ip" {}