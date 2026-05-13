variable "dev_acr" {
  type = map(object({
    acrname             = string
    resource_group_name = string
    location           = string
    sku                 = string
  }))
}