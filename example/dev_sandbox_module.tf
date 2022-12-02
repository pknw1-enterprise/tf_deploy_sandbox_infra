
provider "azurerm" {
 features {}
 subscription_id = "625b66d7-5b11-40fb-99ab-ba303c13ea88" 
}

terraform {
  backend "local" {
    path = "terraform.tfstate"
  }
}

variable "project_name" {
  type = string
  default = "sandbox_project"
}


variable "location" {
  type = string
  default = "ukwest"
}

variable "expires" {
  type = string
  default = "7"
}



module "dev" {

  source = "./sandbox-setup-module/"
  project_name = var.project_name
  location     = var.location
  expires     = var.expires

}

output "config" {
  value = module.dev.config
}
