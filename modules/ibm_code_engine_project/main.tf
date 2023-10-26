#####################################################
# Code Engine Project Resource
# Copyright 2023 IBM
#####################################################

resource "ibm_code_engine_project" "project" {
  name               = var.name
  resource_group_id  = var.resource_group_id
}