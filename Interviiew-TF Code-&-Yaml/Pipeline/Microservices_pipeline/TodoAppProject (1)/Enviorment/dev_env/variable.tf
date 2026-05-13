variable "dev_rgs" {
  description = "Map of resource group configurations for the development environment"
  type = map(object({
    rgname   = string
    location = string

  }))
}
variable "dev_acrs" {
  description = "Map of Azure Container Registry configurations for development"
  type = map(object({
    acrname             = string
    resource_group_name = string
    location            = string
    sku                 = string

  }))
}

variable "dev_aksclusters" {
  type = map(object({
    aksclustername      = string
    nodepoolname       = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    vm_size             = string
    node_count          = number
    network_plugin      = string
    network_policy      = string
    identity_type       = string
  }))
}

variable "servers_dbs" {
  type = map(any)

}