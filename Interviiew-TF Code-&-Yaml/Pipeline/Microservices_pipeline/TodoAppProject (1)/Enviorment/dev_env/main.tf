module "dev-rg-module" {
  source = "../../module/azurerm_resource_group"
  dev_rg = var.dev_rgs

}
module "dev-acr-module" {
  source     = "../../module/azurerm_acr"
  dev_acr    = var.dev_acrs
  depends_on = [module.dev-rg-module]
}

module "dev-aks-module" {
  source         = "../../module/azurerm_aks"
  dev_akscluster = var.dev_aksclusters
  depends_on     = [module.dev-rg-module]
}
module "database" {
  source      = "../../module/azurerm_database"
  servers_dbs = var.servers_dbs
  depends_on  = [module.dev-rg-module]

}