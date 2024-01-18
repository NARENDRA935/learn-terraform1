variable "fruits1" {
  default = {
    apple = 10
    banana = 100
  }
}

variable "fruits2" {
  default = {
    apple = {
      quantity = 10
      name = "apple"
    }
    banana = {
      name = "banana"
      quantity = 100

    }
  }
}
resource "null_resource" "test1" {
  for_each = var.fruits1
  provisioner "local-exec" {
    command = "echo ${each.key} = ${each.value}"
  }

}

resource "null_resource" "test2" {
  for_each = var.fruits1
  provisioner "local-exec" {
    command = "echo ${lookup(each.value, "name","null" )} = ${lookup(each.value, "quantity", "null" )}"
  }

}