resource "azurerm_resource_group" "dev-rg" {
    for_each = var.dev_rg
  name     = each.value.rgname
  location = each.value.location
  tags = {
    Environment = "dev"
    app = "todoapp"
    project = "TodoAppProject"
    owner = "rammishra"
  }
}