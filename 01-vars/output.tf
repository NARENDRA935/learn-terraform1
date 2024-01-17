output "v1" {
  value = var.v1
}

output "first_value_list" {
  value = var.v2[0]
}

output "second_value_list" {
  value = var.v2[1]
}

output "value_in_map" {
  value = var.v3["xyz"]
}

output "value_in_map1" {
  value = lookup(var.v3, "abc1", "none")
}

output "second_value_list1" {
  value = element(var.v2, 4 )
}

output "fruit_details" {
  value = "fruit name - apple , quentity -${var.fruits["apple"]["quantity"]}"
}