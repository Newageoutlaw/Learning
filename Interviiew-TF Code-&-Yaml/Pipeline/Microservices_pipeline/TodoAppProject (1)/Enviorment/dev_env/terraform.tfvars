dev_rgs = {
  rg1 = {
    rgname   = "dev-rg1-todoapp"
    location = "south india"

  }
}
dev_acrs = {
  acr1 = {
    acrname             = "devramacr1"
    resource_group_name = "dev-rg1-todoapp"
    location            = "south india"
    sku                 = "Standard"
  }
}
dev_aksclusters = {
  aks1 = {
    aksclustername      = "devaks1"
    location            = "South India"
    resource_group_name = "dev-rg1-todoapp"
    dns_prefix          = "devaksdns1"
    vm_size             = "Standard_DS2_v2"
    node_count          = 2
    network_plugin      = "azure"
    network_policy      = "calico"
    identity_type       = "SystemAssigned"
    nodepoolname        = "aksnodepool"
  }
}

servers_dbs = {
  "devtododbsrvram1" = {
    resource_group_name            = "dev-rg1-todoapp"
    location                       = "centralindia"
    version                        = "12.0"
    administrator_login            = "devopsadmin"
    administrator_login_password   = "P@ssw01rd@123"
    allow_access_to_azure_services = true
    dbs                            = ["todoappdb1"]
  }
}