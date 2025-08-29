
resource "azurerm_resource_group" "babu" {
  name     = "test-rg112"
  location = "East US"
  
}

resource "azurerm_storage_account" "babu_sa" {
  name                     = "teststorage112"
  resource_group_name      = azurerm_resource_group.babu.name
  location                 = azurerm_resource_group.babu.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
public_network_access_enabled = false

  allow_blob_public_access = false
  min_tls_version          = "TLS1_2"
}