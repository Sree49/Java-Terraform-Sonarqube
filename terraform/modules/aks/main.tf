resource "azurerm_kubernetes_cluster" "cluster" {
  name                = "kube-cluster"
  location            = var.RG_Location
  resource_group_name = var.RG_Name
  dns_prefix          = "kube-cluster"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_DC2ds_v3"
  }
node_provisioning_profile {
    mode = "Auto"
  }
  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}


