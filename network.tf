module "network" {
  source  = "app.terraform.io/jamesbradshawiii/network/azurerm"
  version = "3.5.0"
resource "azurerm_network_interface" "catapp-nic" {
  name                      = "${var.prefix}-catapp-nic"
  location                  = var.location
  resource_group_name       = azurerm_resource_group.myresourcegroup.name

}
