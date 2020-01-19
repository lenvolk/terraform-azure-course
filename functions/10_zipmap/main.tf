##############################################
# Function: zipmap
# https://nedinthecloud.com/2018/09/21/terraform-fotd-zipmap/
##############################################
##############################################
# Variables
##############################################
variable "list_1" {
  type = "list"

  default = [["n1v1","n1v2"],["n2v1","n2v2"]]
}

variable "map_1" {
  type = "map"

  default = {
    "k1" = "v1"
    "k2" = "v2"
  }
}

variable "list_2" {
  default = [[], [], []]
}

variable "list_3" {
  default = [false, false, false]
}

variable "list_4" {
  default = ["So", "Long", "and", "Thanks"]
}

##############################################
# Resources
##############################################