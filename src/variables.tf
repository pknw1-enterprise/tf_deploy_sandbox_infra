variable "net_rg_name" {
  type = string
  default = null
}

variable "vnet_name" {
  type = string
  default = null
}


variable "create_net_rg" {
  type = bool
  default = true
}


variable "create_vnet" {
  type = bool
  default = true
}


variable "create_subnet" {
  type = bool
  default = true
}


variable "create_nsg" {
  type = bool
  default = true
}

variable "app_rg_name" {
  type = string
  default = null
}

variable "create_app_rg" {
  type = bool
  default = true
}

variable "expires" {
  type =  string
  default = "1"
}

variable "project_name" {
  type =  string
  default = "my_sample_project"
}


variable "workspace" {
  type =  string
  default = "dev"
}

variable "location" {
  type =  string
  default = "ukwest"
}

