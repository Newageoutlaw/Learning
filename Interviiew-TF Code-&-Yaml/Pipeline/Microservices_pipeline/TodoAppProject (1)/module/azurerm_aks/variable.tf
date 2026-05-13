variable "dev_akscluster" {
  description = "Map of AKS cluster configurations for development"
  type = map(object({
    aksclustername      = string
    nodepoolname        = string
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