module "ec2" {
  source = "./module/ec2"
}

module "route53" {
  source = "./module/route53"
  private_ip = module.ec2.private_ip
}