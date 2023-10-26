#####################################################
# Code Engine Secret Resource
# Copyright 2023 IBM
#####################################################

resource "ibm_cr_namespace" "namespace" {
  name        = var.name
  resource_group_id  = var.resource_group_id
}