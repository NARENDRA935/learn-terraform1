resource "aws_instance" "instances" {
  count                  = length(var.component)
  ami                    = data.aws_ami.centos8.image_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = element(var.component,count.index )
  }
}

resource "aws_route53_record" "records" {
  count = length(var.component)
  zone_id = var.zone_id
  name    = "${element(var.component,count.index )}-dev"
  type    = "A"
  ttl     = 30
  records =[element(aws_instance.instances.*.private_ip,count.index )]
}


