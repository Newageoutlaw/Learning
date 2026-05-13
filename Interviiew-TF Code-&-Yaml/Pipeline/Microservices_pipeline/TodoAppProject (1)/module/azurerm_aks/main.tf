resource "azurerm_kubernetes_cluster" "dev-aks" {
    for_each = var.dev_akscluster
    name = each.value.aksclustername
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    dns_prefix = each.value.dns_prefix
    default_node_pool {
      name = each.value.nodepoolname
      vm_size = each.value.vm_size
      node_count = each.value.node_count
      
    }

    network_profile {
      network_plugin = each.value.network_plugin
      network_policy = each.value.network_policy
    }
   
  identity {
    type = each.value.identity_type

  }
  tags = {
    Environment = "dev"
    app = "todoapp"
    project = "TodoAppProject"
    owner = "rammishra"
    
  }
}
