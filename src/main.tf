
locals {
 # workspace = terraform.workspace
  resourcePrefix = "eit-${var.project_name}-${local.workspace}-ukw"
  location      = var.location

}

locals {
  app_rg_name = var.app_rg_name != null ? var.app_rg_name : "${local.resourcePrefix}-app-rg"
}


resource "azurerm_resource_group" "app" {

  count = var.create_app_rg == true ? 1 : 0

  name = local.app_rg_name
  location = local.location
  tags = local.deploy_tags
  }


resource "local_file" "resource_groups" {
    content  = <<EOF
data "azurerm_resource_group" "app" {
  # data reference to pre-provisioned resource group

  name = "${local.app_rg_name}"
}
    EOF
    filename = "user_setup/auto_globals.tf"
}
