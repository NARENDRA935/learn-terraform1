module "app_resource" {
  source = "./module/app-resource"
  for_each = var.component
  instance_type          = lookup(each.value,"instance_type","t3.micro" )
  name                   = lookup(each.value,"name",null )
  vpc_security_group_ids = "vpc_security_group_ids"
  zone_id                = "zone_id"
}