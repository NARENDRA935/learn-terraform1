variable "v1" {
  default = "hello world"
}

variable "v2" {
  default = [ "hello",100,true]
}
# varible can have different data type is aceepting in list or anywhere

variable "v3" {
  default = {
    abc = 100
    xyz = "hundred"
  }
}