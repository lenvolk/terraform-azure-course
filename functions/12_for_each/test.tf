variable "Lbs" {
  default = {

    lb1 = {
      id               = "1" #Id of the load balancer use as a suffix of the load balancer name
      suffix_name      = "apa"
      subnet_iteration = "0"        #Id of the Subnet
      static_ip        = "10.0.1.4" #(Optional) Set null to get dynamic IP or delete this line
    }

    lb2 = {
      id               = "1" #Id of the load balancer use as a suffix of the load balancer name
      suffix_name      = "iis"
      subnet_iteration = "0"        #Id of the Subnet
      static_ip        = "10.0.1.5" #(Optional) Set null to get dynamic IP or delete this line
    }

  }
}


# for_each            = var.Lbs
# lookup(azurerm_lb.lb, each.key)["id"]


output "for_value_output" {
  value = [ for x in var.Lbs: x.static_ip if x.suffix_name == "iis"][0]
}
output "for_list_output" {
  value = [ for x in var.Lbs: x.static_ip]  
}

# output "lookup_output" {
#   value = lookup([ for x in var.Lbs: x.static_ip])["static_ip"]  
# }