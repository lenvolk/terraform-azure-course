##############################################
# Outputs
##############################################

output "1_standard_list" {
  value = "${zipmap(list("k1","k2","k3"),list("v1","v2","v3"))}"
}

output "2_empty_values" {
  value = "${zipmap(var.list_3, var.list_2)}"
}

output "3_nest_list_values" {
  value = "${zipmap(list("k1","k2"), var.list_1)}"
}

output "4_nest_map_values" {
  value = "${zipmap(list("k1","k2"), list(var.map_1,var.map_1))}"
}

output "5_nest_mixed_lengths" {
  value = "${zipmap(list("k1","k2"), list(var.list_4,var.list_3))}"
}