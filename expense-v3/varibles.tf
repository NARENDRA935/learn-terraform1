variable "instance_type" {
  default = "t3.micro"
}

variable "vpc_security_group_ids" {
  default = ["sg-0200b43c5a335c1ba"]
}

variable "zone_id" {
  default = "Z02327421CM6HX7FT19J5"
}

variable "component" {
  default = [ "frontend","backend", "mysql"]
}