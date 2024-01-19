variable "component" {
  default = {
    frontend = {
      name          = "frontend"
      instance_type = "t3.micro"
    }
    backend = {
      name          = "backend"
      instance_type = "t3.micro"
    }
    mysql = {
      name          = "mysql"
      instance_type = "t3.micro"
    }
  }
}

variable "zone_id" {
  default = "Z02327421CM6HX7FT19J5"
}

variable "vpc_security_group_ids" {
  default = ["sg-0200b43c5a335c1ba"]
}
