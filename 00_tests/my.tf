variable "myvar" {
    type = "string"
    default = "hello terraform"
}

variable "mymap"{
    type = map (string)
    default = {
        mykey = "my value"
    }
}

variable "mylist"{
    type = list
    default = [1,2,3]
}

#### testing
# https://github.com/terraform-providers/terraform-provider-azurerm/issues/2108
# data "azurerm_client_config" "current" {}
# output "substr" {
#   value = "${substr(data.azurerm_client_config.current.subscription_id,-6, 6)}"
# }