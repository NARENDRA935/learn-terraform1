resource "null_resource" "test" {
  count = 10
}

output "test" {
  value = null_resource.test.*.id
}

resource "aws_instance" "test" {
  count                  = 3
  ami                    = "ami-0f3c7d07486cad139"
  instance_type          = "t3.micro"
  vpc_security_group_ids = ["sg-0200b43c5a335c1ba"]

  tags = {
    Name = "test"
  }
}
