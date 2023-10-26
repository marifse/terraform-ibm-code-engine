#####################################################
# CE Project Example
# Copyright 2023 IBM
#####################################################

provider "ibm" {
}

data "ibm_resource_group" "resource_group" {
  name = (var.resource_group != null ? var.resource_group : "default")
}

module "ibm_code_engine_project" {
  // source = "terraform-ibm-modules/ce/ibm//modules/ibm_code_engine_project"
  source = "../../modules/ibm_code_engine_project"

  name              = var.name
  resource_group_id = data.ibm_resource_group.rg.id
}