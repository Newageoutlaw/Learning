resource "azurerm_container_registry" "dev-acr" {
    for_each = var.dev_acr
    name = each.value.acrname
    resource_group_name = each.value.resource_group_name
    location = each.value.location
    sku = each.value.sku
    tags = {
    Environment = "dev"
    app = "todoapp"
    project = "TodoAppProject"
    owner = "rammishra"
    }
}
