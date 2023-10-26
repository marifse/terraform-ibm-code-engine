#####################################################
# IBM CR Namespace Configuration Example
# Copyright 2023 IBM
#####################################################

provider "ibm" {
}

data "ibm_resource_group" "resource_group" {
  name = (var.resource_group != null ? var.resource_group : "default")
}

module "subnet" {
  // source = "terraform-ibm-modules/ce/ibm//modules/ibm_cr_namespace"
  source = "../../modules/ibm_cr_namespace"

  name                       = var.name
  resource_group_id          = data.ibm_resource_group.resource_group.id
}